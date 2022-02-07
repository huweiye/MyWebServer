#include "threadpool.h"

void MyHandler(std::shared_ptr<void> req)
{
    std::shared_ptr<RequestData> request = std::static_pointer_cast<RequestData>(req);
    if (request->canWrite())
        request->handleWrite();
    else if (request->canRead())
        request->handleRead();
    request->handleConn();
}

pthread_mutex_t ThreadPool::lock = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t ThreadPool::task_queue_not_empty = PTHREAD_COND_INITIALIZER;
std::vector<pthread_t> ThreadPool::threads;
std::vector<ThreadPoolTask> ThreadPool::task_queue;

int ThreadPool::thread_count = 0;//xian cheng shu
int ThreadPool::queue_size = 0;
int ThreadPool::head = 0;
int ThreadPool::tail = 0;
int ThreadPool::count = 0;
int ThreadPool::shutdown = 0;
int ThreadPool::started = 0;

int ThreadPool::threadpool_create(int _thread_count, int _queue_size){
    do{
        if(_thread_count <= 0 || _thread_count > MAX_THREADS || _queue_size <= 0 || _queue_size > MAX_QUEUE){
            _thread_count = 4;
            _queue_size = MAX_QUEUE;
        }
        thread_count = 0;
        queue_size = _queue_size;
        head = tail = count = 0;
        shutdown = started = 0;

        threads=std::vector<pthread_t>(_thread_count);
        task_queue=std::vector<ThreadPoolTask>(queue_size);

        /* Start worker threads */
        for(int i = 0; i < _thread_count; ++i)
        {
            if(pthread_create(&threads[i], NULL, threadpool_thread, (void*)(0)) != 0)
            {
                //threadpool_destroy(pool, 0);
                return -1;
            }
            ++thread_count;
            ++started;
        }

    }while(false);
    return 0;
}
int ThreadPool::threadpool_add_task(std::shared_ptr<void> args, std::function<void(std::shared_ptr<void>)> fun){
    int next, err = 0;
    if(pthread_mutex_lock(&lock) != 0)//suo ren wu dui lie
        return THREADPOOL_LOCK_FAILURE;

    do
    {
        next = (tail + 1) % queue_size;
        // 队列满
        if(count == queue_size)
        {
            err = THREADPOOL_QUEUE_FULL;
            break;
        }
        // 已关闭
        if(shutdown)
        {
            err = THREADPOOL_SHUTDOWN;
            break;
        }
        task_queue[tail].func = fun;//can shu fun,mo ren zhi shi Myhandler()
        task_queue[tail].args = args;//yi ge requestData dui xiang
        tail = next;
        ++count;

        /* pthread_cond_broadcast */
        if(pthread_cond_signal(&task_queue_not_empty) != 0)//huan xing yi ge xiao fei zhe
        {
            err = THREADPOOL_LOCK_FAILURE;
            break;
        }
    } while(false);

    if(pthread_mutex_unlock(&lock) != 0)
        err = THREADPOOL_LOCK_FAILURE;

    return err;
}
void *ThreadPool::threadpool_thread(void *args)
{
    while (true)
    {
        ThreadPoolTask task;
        pthread_mutex_lock(&lock);
        while((count == 0) && (!shutdown)) 
        {
            pthread_cond_wait(&task_queue_not_empty, &lock);
        }
        if((shutdown == immediate_shutdown) ||
           ((shutdown == graceful_shutdown) && (count == 0)))
        {
            break;
        }
        task.func = task_queue[head].func;
        task.args = task_queue[head].args;
        task_queue[head].func = NULL;
        task_queue[head].args.reset();
        head = (head + 1) % queue_size;
        --count;
        pthread_mutex_unlock(&lock);

        (task.func)(task.args);//call MyHandler()-------------------------------------------------

    }
    --started;
    pthread_mutex_unlock(&lock);
    printf("a threadpool thread exit\n");
    pthread_exit(NULL);
    return(NULL);
}

int ThreadPool::threadpool_destroy(ShutDownOption shutdown_option)
{
    printf("Thread pool destroy !\n");
    int i, err = 0;

    if(pthread_mutex_lock(&lock) != 0)
    {
        return THREADPOOL_LOCK_FAILURE;
    }
    do
    {
        if(shutdown) {
            err = THREADPOOL_SHUTDOWN;
            break;
        }
        shutdown = shutdown_option;

        if((pthread_cond_broadcast(&task_queue_not_empty) != 0) ||
           (pthread_mutex_unlock(&lock) != 0)) {
            err = THREADPOOL_LOCK_FAILURE;
            break;
        }

        for(i = 0; i < thread_count; ++i)
        {
            if(pthread_join(threads[i], NULL) != 0)
            {
                err = THREADPOOL_THREAD_FAILURE;
            }
        }
    } while(false);

    if(!err)
    {
        threadpool_free();
    }
    return err;
}
int ThreadPool::threadpool_free()
{
    if(started > 0)
        return -1;
    pthread_mutex_lock(&lock);
    pthread_mutex_destroy(&lock);
    pthread_cond_destroy(&task_queue_not_empty);
    return 0;
}
