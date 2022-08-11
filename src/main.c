#include "ev3dev.h"
#include <cstdio>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <linux/fb.h>
#include <unistd.h>

using namespace ev3dev;

int main() {
    int fd;
    struct fb_var_screeninfo var = { 0 };
    fd = open("/dev/fb0", O_RDWR);
    if(fd < 0)
    {
        printf("can't open /dev/fb0\n");
        return -1;
    }
    if(ioctl(fd, FBIOGET_VSCREENINFO, &var))
    {
        printf("can't get var\n");
        return -1;
    }

}