#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
static void before_main(void) __attribute__((constructor));

static void before_main(void)
{
    write(1, "Hello World!\n", 14);
}