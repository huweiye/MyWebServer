#ifndef _THREADPOOL_H_
#define _THREADPOOL_H_
#include "requestData.h"
#include<pthread.h>
#include<functional>
#include<memory>
#include<vector>

const int THREADPOOL_INVALID = -1;
const int THREADPOOL_LOCK_FAILURE = -2;
const int THREADPOOL_QUEUE_FULL = -3;
const int THREADPOOL_SHUTDOWN = -4;
const int THREADPOOL_THREAD_FAILURE = -5;
const int THREADPOOL_GRACEFUL = 1;

const int MAX_THREADS =16;
const int MAX_QUEUE = 65535;

typedef enum
{
    immediate_shutdown = 1,
    graceful_shutdown  = 2
} ShutDownOption;

struct ThreadPoolTask{//one task in task_queue
    std::function<void(std::shared_ptr<void>)> func;//task's Handler()
    std::shared_ptr<void> args;//requestdata
};

void MyHandler(std::shared_ptr<void> req_data);

class ThreadPool{
private:
    static pthread_mutex_t lock;
    static pthread_cond_t task_queue_not_empty;

    static std::vector<pthread_t> threads;
    static std::vector<ThreadPoolTask> task_queue;
    static int thread_count;
    static int queue_size;
    static int head;
    // tail 指向尾节点的下一节点
    static int tail;
    static int count;
    static int shutdown;
    static int started;
public:
    static int threadpool_create(int _thread_count, int _queue_size);
    static int threadpool_add_task(std::shared_ptr<void> args, std::function<void(std::shared_ptr<void>)> fun = MyHandler);
    static int threadpool_destroy(ShutDownOption shutdown_option = graceful_shutdown);
    static int threadpool_free();
    static void *threadpool_thread(void *args);//use in pthread_create's arg
};
#endif
