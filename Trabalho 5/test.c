#include <stdio.h>
#include <string.h>

int a();
float b();
char c();

int main(int argc, char* argv[])
{
    if(argc == 2 && strcmp(argv[1], "float") == 0)
    {
        printf("Teste b(): %f\n", b());
    }
    else if(argc == 2 && strcmp(argv[1], "char") == 0)
    {
        printf("Teste c(): %c\n", c());
    }
    else
    {
        printf("Teste a(): %d\n", a());
    }

    return 0;
}
