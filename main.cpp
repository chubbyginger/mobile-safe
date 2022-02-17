#include "ev3dev.h"
#include <unistd.h>

using namespace ev3dev;

int main() {
    lcd l;
    l.fill(0xFFFFFFFF);
    usleep(1000000);
    return 0;
}