#ifndef _NONCOPYABLE_H_
#define _NONCOPYABLE_H_
class noncopyable{
protected:
    noncopyable(){};
    ~noncopyable(){};
private://avoid its son-class call copy operation
    noncopyable(const noncopyable &n);
    const noncopyable operator=(const noncopyable&);
};
#endif
