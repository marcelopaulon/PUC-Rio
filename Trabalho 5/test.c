#include <stdio.h>
#include <string.h>

int a();
float b();

int main(int argc, char* argv[])
{
    if(argc == 2 && strcmp(argv[1], "float") == 0)
    {
        printf("Teste b(): %f\n", b());
    }
    else
    {
        printf("Teste a(): %d\n", a());
    }

    return 0;
}
