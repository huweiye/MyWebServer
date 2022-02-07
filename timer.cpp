#include "timer.h"
#include "epoll.h"

#include<sys/time.h>

/*Summary:create a TimerNode obj with its expired_time
 * */
TimerNode::TimerNode(SP_ReqData rd,size_t timeout){
    this->deleted=false;
    this->request_data=rd;
    struct timeval now;
    gettimeofday(&now,NULL);
    this->expired_time=(now.tv_sec*1000)+(now.tv_usec/1000)+timeout;
}
TimerNode::~TimerNode(){
    if(request_data)Epoll::epoll_del(request_data->getFd());
}
void TimerNode::update(int timeout){
    struct timeval now;
    gettimeofday(&now,NULL);
    expired_time=(now.tv_sec*1000)+(now.tv_usec/1000)+timeout;
}
bool TimerNode::isvalid(){
    struct timeval now;
    gettimeofday(&now,NULL);
    size_t nowtime=(now.tv_sec*1000)+(now.tv_usec/1000);
    if(nowtime<=expired_time){return true;}
    else {setDeleted();return false;}
}
void TimerNode::clearReq(){
    request_data.reset();//not RequestData's member func,is shared_ptr<>'s member func
    setDeleted();
}
void TimerNode::setDeleted(){
    this->deleted=true;
}
bool TimerNode::isDeleted()const{
    return this->deleted;
}
size_t TimerNode::getExpiredTime()const{
    return this->expired_time;
}

void TimerManager::addTimer(SP_ReqData request_data,int timeout){
    SP_TimerNode new_timer_node=std::make_shared<TimerNode>(request_data,timeout);
    mutexlock.lock();
    TimerPriorityQueue.emplace(new_timer_node);//TimerPriorityQueue is critical resource
    mutexlock.unlock();
    request_data->linkTimer(new_timer_node);
}
void TimerManager::addTimer(SP_TimerNode timer_node){
    mutexlock.lock();
    TimerPriorityQueue.emplace(timer_node);
    mutexlock.unlock();
}
/*Summary:check top timer wheter it is set deleted,or has time out 
 * */
void TimerManager::handle_expired_event(){
    mutexlock.lock();
    while(!TimerPriorityQueue.empty()){
        SP_TimerNode t=TimerPriorityQueue.top();
        if(t->isDeleted())TimerPriorityQueue.pop();
        else if(t->isvalid()==false)TimerPriorityQueue.pop();
        else break;
    }
    mutexlock.unlock();
}
