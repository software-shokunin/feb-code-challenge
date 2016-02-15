#include <stdio.h>
#include <stdlib.h>

int add(int,int);

int main(int argc, char *argv[]) {
    int a,b,result;
    
    if (argc < 3) {
        printf("Usage: add n m\nWhere n and m are integers.\n");
        return 0;
    }
    
    a = atoi(argv[1]);
    b = atoi(argv[2]);
    
    result = add(a,b);
    
    printf("%d",a);
    if (b>0) {
        printf(" + %d",b);
    } else {
        printf(" - %d",-b);
    }
    printf(" = %d\n",result);
    
    return 0;
}