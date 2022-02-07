#include<cstdio>
#include<cstring>
#include<cstdlib>
#include<cerrno>
#include<iostream>
#include<string>

#include<unistd.h>
#include<arpa/inet.h>
#include<netinet/in.h>
#include<sys/socket.h>
#include<sys/types.h>
#include<sys/epoll.h>
#include<fcntl.h>
#include<sys/errno.h>

#include "utils.h"
#include"epoll.h"
#include "threadpool.h"
using namespace std;
//const-var is file-visiable,use "extern" to let them can be use in other files
extern const int MAXLISTENQUEUE=1024;//use in listen()
extern const int MAXFDNUMS=1024;//use in fd2reqdata[]
extern const int MAXEVENTNUM=5000;//use in epoll_events[]
extern const std::string PATH="/";//root path
extern const int TIMER_TIME_OUT=5000;//5s

const int THREAD_NUM=4;
const int TASK_QUEUE=65536;
const int PORT=5678;
int socket_bind_listen(int port);

int main(){
    handle_sigpipe();//ignore SIGPIPE

    Epoll::epoll_init();

    ThreadPool::threadpool_create(THREAD_NUM,TASK_QUEUE);

    int lfd=socket_bind_listen(PORT);

    setSockNonBlocking(lfd);

    shared_ptr<RequestData> req_lfd=make_shared<RequestData>();
    req_lfd->setFd(lfd);

    Epoll::epoll_add(lfd,req_lfd,EPOLLIN|EPOLLET);

    while(true){
        cout<<"epoll_wait"<<endl;
        Epoll::my_epoll_wait(lfd);
    }
    return 0;




}
/*
 * Summary:create listen_fd and bind and listen
 * Parameters:
 *          port
 *Return:if success,return listen fd which has been bind and listen;
         if failed,return -1
 */ 
int socket_bind_listen(int port){
    if(port<1024||port>65535)return -1;
    int lfd=0;
    if((lfd=socket(AF_INET,SOCK_STREAM,0))==-1)return -1;
    int opt=1;//solve the problem that "port which in TIME_WAIT can not be bind"
    if(setsockopt(lfd,SOL_SOCKET,SO_REUSEADDR,&opt,sizeof(opt))==-1)return -1;

    struct sockaddr_in server_addr;
    bzero(&server_addr,sizeof(server_addr));
    server_addr.sin_family=AF_INET;
    server_addr.sin_addr.s_addr=htonl(INADDR_ANY);
    server_addr.sin_port=htons(port);

    if(bind(lfd,(struct sockaddr *)(&server_addr),sizeof(server_addr))==-1)return -1;

    if(listen(lfd,MAXLISTENQUEUE)==-1)return -1;
    
    if(lfd==-1){close(lfd);return -1;}
    return lfd;
}
