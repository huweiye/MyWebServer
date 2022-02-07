#ifndef _REQUESTDATA_H_
#define _REQUESTDATA_H_ 
#include<opencv/cv.h>
#include<memory>
#include<unordered_map>
#include "timer.h"

const int STATE_PARSE_URI = 1;
const int STATE_PARSE_HEADERS = 2;
const int STATE_RECV_BODY = 3;
const int STATE_ANALYSIS = 4;
const int STATE_FINISH = 5;

const int MAX_BUFF = 4096;

const int AGAIN_MAX_TIMES = 200;

const int PARSE_URI_AGAIN = -1;
const int PARSE_URI_ERROR = -2;
const int PARSE_URI_SUCCESS = 0;

const int PARSE_HEADER_AGAIN = -1;
const int PARSE_HEADER_ERROR = -2;
const int PARSE_HEADER_SUCCESS = 0;

const int ANALYSIS_ERROR = -2;
const int ANALYSIS_SUCCESS = 0;

const int METHOD_POST = 1;
const int METHOD_GET = 2;

const int HTTP_10 = 1;
const int HTTP_11 = 2;

const int KEEPALIVE = 5*60*1000;

class MimeType{
private:
    static void init();
    static std::unordered_map<std::string,std::string> mime;
    MimeType();
    MimeType(const MimeType &m);//ba kaobeigouzao han shu sheng ming wei private,jin zhi diao yong
    static pthread_once_t once_control;
public:
    static std::string getMime(const std::string &suffix);
};
enum HeaderState{
    h_start=0,
    h_key,
    h_colon,
    h_spaces_after_colon,
    h_value,
    h_CR,
    h_LF,
    h_end_CR,
    h_end_LF
};

class TimerNode;
class RequestData:public std::enable_shared_from_this<RequestData>{
private:
    std::string path;
    int fd;
    int efd;
    std::string inBuffer;
    std::string outBuffer;
    __uint32_t events;
    bool error;
    int method;
    int HTTPversion;
    std::string file_name;
    int now_read_pos;
    int state;
    int h_state;
    bool isfinish;
    bool keep_alive;
    std::unordered_map<std::string, std::string> headers;
    std::weak_ptr<TimerNode> timer;
    bool isAbleRead;
    bool isAbleWrite;
private:
    int parse_URI();
    int parse_Headers();
    int analysisRequest();
    cv::Mat stitch(cv::Mat &src){
        return src;
    }
public:
    RequestData();
    RequestData(int _efd,int _fd,std::string _path);
    ~RequestData();
    void linkTimer(std::shared_ptr<TimerNode> mtimer);
    void reset();
    void seperateTimer();
    int getFd();
    void setFd(int _fd);

    void handleRead();
    void handleWrite();
    void handleError(int fd, int err_num, std::string short_msg);
    void handleConn();
    void disableReadAndWrite();
    void enableRead();
    void enableWrite();
    bool canRead();
    bool canWrite();
};
#endif
