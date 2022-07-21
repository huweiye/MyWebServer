#ifndef _UTILS_H_
#define _UTILS_H_
#include<cstdio>
#include<string>

ssize_t readn(int fd,void *buf,size_t n);
ssize_t readstr(int fd,std::string & inBuffer);
ssize_t writen(int fd,void * buf,size_t n);
ssize_t writestr(int fd,std::string & sBuffer);
void handle_sigpipe();
int setSockNonBlocking(int fd);

#endif

