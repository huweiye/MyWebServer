#ifndef _MUTEXLOCK_H_
#define _MUTEXLOCK_H_
#include"noncopyable.h"
#include<pthread.h>
#include<cstdio>

class MutexLock:noncopyable{
private:
    pthread_mutex_t mutex;
public:
    MutexLock(){
        pthread_mutex_init(&mutex,NULL);
    }
    ~MutexLock(){
        pthread_mutex_destroy(&mutex);
    }
    void lock(){
        pthread_mutex_lock(&mutex);
    }
    void unlock(){
        pthread_mutex_unlock(&mutex);
    }
    pthread_mutex_t * getlock(){
        return &mutex;
    }
private:
    friend class Condition;//Condition's all function can get this class's private member
};
#endif
