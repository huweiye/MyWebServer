#ifndef _EPOLL_H_
#define _EPOLL_H_
#include<vector>
#include<unordered_map>
#include<sys/epoll.h>
#include<memory>

#include "requestData.h"
#include"timer.h"

class Epoll{
private://all static member
    static std::vector<struct epoll_event> event_v;//vector of epoll_event
    static std::vector<std::shared_ptr<RequestData>> fd2reqdata_v;//vector of fd->requestdata
    static int efd;
    static TimerManager timer_manager;
public:
    static int epoll_init();
    static int epoll_add(int fd,std::shared_ptr<RequestData> request,__uint32_t events);
    static int epoll_mod(int fd,std::shared_ptr<RequestData> request,__uint32_t events);
    static int epoll_del(int fd,__uint32_t events=(EPOLLIN|EPOLLET|EPOLLONESHOT));
    static void my_epoll_wait(int lfd);
    static void acceptConnection(int lfd);
    static std::vector<std::shared_ptr<RequestData>> getEventsRequest(int lfd,int events_num);
    static void add_timer(std::shared_ptr<RequestData> request_data,int timeout);
};
#endif
