#include <sys/time.h>

// 空实现，裸机下不提供实际时间
int _gettimeofday(struct timeval *tv, void *tz)
{
    if(tv) {
        tv->tv_sec = 0;   // 秒
        tv->tv_usec = 0;  // 微秒
    }
    return 0;
}
