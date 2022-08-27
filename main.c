#include <stdio.h>

void myfunc(int x) {
	if (x > 0)
		printf("x > 0\n");
}

int main(int argc, char* argv[])
{
    printf("Hello world 1!\n");
    printf("Hello world 2!\n");
    printf("Hello world 3!\n");
	myfunc(0);
    return 0;
}
