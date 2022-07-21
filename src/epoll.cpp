#include <unistd.h>
#include<arpa/inet.h>
#include<netinet/in.h>
#include<sys/socket.h>
#include<sys/epoll.h>
#include<fcntl.h>
#include<sys/errno.h>

#include<cstring>

#include "epoll.h"
#include "config.h"
#include "utils.h"
#include "threadpool.h"

//define Class-Static member var:
std::vector<struct epoll_event> Epoll::event;
std::vector<std::shared_ptr<RequestData>> Epoll::fd2reqdata;
int Epoll::efd=-1;
TimerManager Epoll::timer_manager;

/*Summary:call epoll_create() and new event,fd_v,call by main() 
 * */
int Epoll::epoll_init(){
    efd=epoll_create1(EPOLL_CLOEXEC);
    if(efd==-1)return -1;
    event=std::vector<epoll_event>(MAXEVENTNUM);
    fd2reqdata=std::vector<std::shared_ptr<RequestData>>(MAXFDNUMS);
    return 0;
}
/*Summary:add a new fd_with_events in efd
 * */
int Epoll::epoll_add(int fd,std::shared_ptr<RequestData> request,__uint32_t events){
    struct epoll_event event;
    event.data.fd=fd;
    event.events=events;
    fd2reqdata[fd]=request;//this fd's requestdata-pointer is request 
    if(epoll_ctl(efd,EPOLL_CTL_ADD,fd,&event)<0){
        perror("epoll_add error");
        fd2reqdata[fd].reset();//clear request's obj
        return -1;
    }
    return 0;
}
int Epoll::epoll_mod(int fd,std::shared_ptr<RequestData> request,__uint32_t events){
    struct epoll_event event;
    event.data.fd=fd;
    event.events=events;
    fd2reqdata[fd]=request;
    if(epoll_ctl(efd,EPOLL_CTL_MOD,fd,&event)<0){
        perror("epoll_del error");
        fd2reqdata[fd].reset();//clear request obj 
        return-1;
    }
    return 0;
}
int Epoll::epoll_del(int fd,__uint32_t events){
    struct epoll_event event;
    event.data.fd=fd;
    event.events=events;
    if(epoll_ctl(efd,EPOLL_CTL_DEL,fd,&event)<0){
        perror("epoll_del error");
        fd2reqdata[fd].reset();
        return -1;
    }
    fd2reqdata[fd].reset();
    return 0;
}

/*Summary:when lfd live,call this function() to accept a new cfd and add cfd in epoll 
 * */
void Epoll::acceptConnection(int lfd){
    struct sockaddr_in client_addr;
    socklen_t client_addr_len=sizeof(client_addr);
    bzero(&client_addr,client_addr_len);
    int cfd=0;
    while((cfd=accept(lfd,(struct sockaddr *)(&client_addr),&client_addr_len))>0){
        //because lfd is no-blocking,so while accept
        if(cfd>=MAXFDNUMS){//exceed sys-maxfdnumber 
            close(cfd);
            continue;
        }
       if(setSockNonBlocking(cfd)<0){perror("set cfd no block error");return;}//set cfd no-blocking 

       //create this connection's requestdata obj 
       std::shared_ptr<RequestData> reqdata_ptr=std::make_shared<RequestData>(efd,cfd,PATH);

       epoll_add(cfd,reqdata_ptr,EPOLLIN|EPOLLET|EPOLLONESHOT);//xin lian jie bu neng zhu ce EPOLLOUT shi jian,yin wei yi ding neng chu fa

       timer_manager.addTimer(reqdata_ptr,TIMER_TIME_OUT);//one request-one timer
    }
    if(cfd<0){perror("accept error");}
    return;
}
/*Summary:bind fd with RequestData instance
 * */
std::vector<std::shared_ptr<RequestData>> Epoll::getEventsRequest(int lfd,int events_num){
    std::vector<std::shared_ptr<RequestData>> req_data;
    for(int i=0;i<events_num;++i){
        int fd=event[i].data.fd;
        if(fd==lfd){//lfd:new conn 
            acceptConnection(lfd);//get new conn 
        }else{//cfd:
            if((event[i].events&EPOLLERR)||(event[i].events&EPOLLHUP)){
                //error event:
#ifdef DEBUG
                std::cout<<"error event"<<std::endl;
#endif
                if(fd2reqdata[fd])fd2reqdata[fd]->seperateTimer();
                fd2reqdata[fd].reset();
                continue;//next event
            }
            //read OR write event:
            std::shared_ptr<RequestData> curr_req=fd2reqdata[fd];
            if(curr_req){
                if(event[i].events&EPOLLIN){
                    curr_req->enableRead();
                }
                if(event[i].events&EPOLLOUT){
                    curr_req->enableWrite();
                }
                curr_req->seperateTimer();
                req_data.emplace_back(curr_req);
                fd2reqdata[fd].reset();
            }else{

#ifdef DEBUG
                std::cout<<"fd2reqdata[i] nullptr"<<std::endl;
#endif
            }
        }
    }
    return req_data;
}

/*Summary:call epoll_wait() and call getEventsRequest and add every requestdata to thread_pool_task_queue
 * */
void Epoll::my_epoll_wait(int lfd){
    int readynum=epoll_wait(efd,event.data(),event.size(),-1);
    if(readynum<0){perror("epoll wait error");}

    auto req_data=getEventsRequest(lfd,readynum);//bind every fd with RequestData instance

    if(!req_data.empty()){
        for(auto &req:req_data){
            //add every request to threadpool_task_queue
            if(ThreadPool::threadpool_add_task(req)<0){
                continue;//if taskQueue is full,abandon this task
            }
        }
    }
    timer_manager.handle_expired_event();//check every timerNode
}
void Epoll::add_timer(std::shared_ptr<RequestData> request_data, int timeout)
{
    timer_manager.addTimer(request_data, timeout);
}
