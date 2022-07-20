#include "CountDownLatch.h"


CountDownLatch::CountDownLatch(int count)
  : mutex_(),
    condition_(mutex_),
    count_(count)
{
}

void CountDownLatch::wait(){
    mutex_.lock();
    while(count_>0)
        condition_.wait();
    mutex_.unlock();
}

void CountDownLatch::countDown()
{
    mutex_.lock();
    --count_;
    if (count_ == 0)
    {
        condition_.notifyAll();
    }
    mutex_.unlock();
}

int CountDownLatch::getCount() const
{
    int res=-1;
    mutex_.lock();
    res=count_;
    mutex_.unlock();
    return res;
}
