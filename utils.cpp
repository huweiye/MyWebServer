#include"utils.h"
#include<unistd.h>
#include<fcntl.h>
#include<signal.h>
#include<errno.h>
#include<cstring>

const int MAX_BUFF=4096;
/*Summary:
 * read n bytes to buf,maybe less than n
 * */
ssize_t readn(int fd,void *buf,size_t n){
    size_t nleft=n;
    ssize_t nread=0,readSum=0;
    char * ptr=(char *)buf;
    while(nleft>0){
        nread=read(fd,ptr,nleft);
        if(nread<0){
            if(errno==EINTR) continue;//interrupt by signal,read again 
            else if(errno==EAGAIN||errno==EWOULDBLOCK)return readSum;//read finish,no data anymore,exit fun 
            else return -1;//err 
        }else if(nread==0){
            break;//client close connection 
        }
        readSum+=nread;
        nleft-=nread;
        ptr+=nread;
    }
    return readSum;
}
/*Summary:read all data to std::string
 * */
ssize_t readstr(int fd,std::string & inBuffer){
    ssize_t nread=0;
    ssize_t readSum=0;
    while(true){
        char buff[MAX_BUFF];
        nread=read(fd,buff,MAX_BUFF);
        if(nread<0){
            if(errno==EINTR)continue;//read again 
            else if(errno==EAGAIN||errno==EWOULDBLOCK)return readSum;//read all 
            else return -1;
        }else if(nread==0){
            break;//client close connection 
        }
        readSum+=nread;
        inBuffer+=std::string(buff,buff+nread);
    }
    return readSum;
}

/*Summary:write n bytes
 * */
ssize_t writen(int fd,void * buf,size_t n){
    size_t nleft=n;
    ssize_t nwritten=0,writeSum=0;
    char * ptr=(char *)buf;
    while(nleft>0){
        nwritten=write(fd,ptr,nleft);
        if(nwritten<=0){
            if(errno==EINTR)continue;
            else if(errno==EAGAIN||errno==EWOULDBLOCK)return writeSum;//write full 
            else return -1;
        }
        writeSum+=nwritten;
        nleft-=nwritten;
        ptr+=nwritten;
    }
    return writeSum;
}

/*Summary: write a std::string 
 * */
ssize_t writestr(int fd,std::string & sBuffer){
    size_t nleft=sBuffer.size();
    ssize_t nwritten=0,writeSum=0;
    const char * ptr=sBuffer.c_str();
    while(nleft>0){
        nwritten=write(fd,ptr,nleft);
        if(nwritten<=0){
            if(errno==EINTR)continue;
            else if(errno==EAGAIN||errno==EWOULDBLOCK)break;
            else return -1;
        }
        writeSum+=nwritten;
        nleft-=nwritten;
        ptr+=nwritten;
    }
    if(writeSum==sBuffer.size()){//write all str 
        sBuffer.clear();
    }else{//the rest str which has not been written 
        sBuffer=sBuffer.substr(writeSum);
    }
    return writeSum;
}

/*Summary:when client exec close(),server exec write() again,SIGPIP exit process
 * this function ignore SIGPIPE signal 
 * */
void handle_sigpipe(){
    struct sigaction sa;
    bzero(&sa,sizeof(sa));
    sa.sa_handler=SIG_IGN;
    sa.sa_flags=0;
    sigaction(SIGPIPE,&sa,NULL);
}

/*Summary:set socket nonblocking 
 * */
int setSockNonBlocking(int fd){
    int flag=fcntl(fd,F_GETFL);
    if(flag<0)return -1;
    flag|=O_NONBLOCK;
    if(fcntl(fd,F_SETFL,flag)<0)return -1;
    return 0;
}
