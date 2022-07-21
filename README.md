Linux C++实现的迷你http服务器  
    1、IO并发模型：one event loop+worker threadpool的Reactor模式，使用epoll ET模式+非阻塞IO  
    2、小根堆实现的计时器关闭超时请求  
    3、有限状态机实现的http请求解析，支持GET和POST请求，支持keep-alive  
    4、模仿muduo库的日志库实现了异步日志功能  
    5、尽可能使用RAII思想，如智能指针、自行对锁等资源进行类封装  


代码简介：  
    epoll.cpp:对Linux epoll的封装，并实现活跃文件描述符与RequestData对象的绑定，并在epoll_wait返回后把任务放进任务队列；  
    requestData.cpp:对http请求处理过程的抽象，实现读取、解析http请求、准备响应数据并回写等方法；  
    threadPool.cpp:线程池实现，但生产者多消费者模型，条件变量实现消费者线程之间的同步；  
    timer.cpp:定时器，一个TimerNode绑定一个requestData对象，用于关闭长期不活跃连接;  
    AsyncLogging:异步日志，多生产者单消费者模型  
![WebBench压测Get主页截图](https://github.com/huweiye/MyWebServer/blob/master/WebBench%E5%8E%8B%E6%B5%8BGET%E4%B8%BB%E9%A1%B5%E6%88%AA%E5%9B%BE.png)

