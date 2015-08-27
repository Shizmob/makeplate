#include <stdio.h>
#include "libprogram.h"

int main(int argc, char *argv[])
{
    printf("Simon says: %s\n", lp_verdict(argc));
    return 0;
}
