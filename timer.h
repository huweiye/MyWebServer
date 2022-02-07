#ifndef _TIMER_H_
#define _TIMER_H_
#include<unistd.h>
#include<memory>
#include<queue>
#include<vector>

#include"noncopyable.h"
#include"MutexLock.h"

class RequestData;//forward declare

class TimerNode{
private:
    typedef std::shared_ptr<RequestData> SP_ReqData;
    bool deleted;//should it be deleted,if true,when Timermanager::handle_expired_event() call,remove it from priority_queue 
    size_t expired_time;//chao shi shi ke, jue dui shi jian,expired_timedan wei hao miao 
    SP_ReqData request_data;//pointer to this timer associate request 
public:
    TimerNode(SP_ReqData rd,size_t timeout);
    ~TimerNode();
    void update(int timeout);
    bool isvalid();
    void clearReq();
    void setDeleted();
    bool isDeleted() const;
    size_t getExpiredTime() const;
};
struct timerCMP{//func-obj,chong zai le () yunsuanfu
    bool operator()(std::shared_ptr<TimerNode>&a,std::shared_ptr<TimerNode>&b)const{
        return a->getExpiredTime()>b->getExpiredTime();
    }
};
class TimerManager{
private:
    typedef std::shared_ptr<RequestData> SP_ReqData;
    typedef std::shared_ptr<TimerNode> SP_TimerNode;
    std::priority_queue<SP_TimerNode,std::vector<SP_TimerNode>,timerCMP> TimerPriorityQueue;
    MutexLock mutexlock;//this TimerManager is Critical resource,need mutex 

    /*---pthread_mutex is a system-resource,so we 'fengzhuang' it in a Class,
     * so when:
     * TimerManager-object create,gcc automaticly call MutexLock's default-generator to create pthread_mutex 
     * when TimerManager-object  need be destoryed,automatically call MutexLock's default-'xigouhanshu' to destory pthread_mutex!
     * This is RAII !
     * */ 
public:
    void addTimer(SP_ReqData request_data,int timeout);
    void addTimer(SP_TimerNode timer_node);
    void handle_expired_event();
};
#endif
