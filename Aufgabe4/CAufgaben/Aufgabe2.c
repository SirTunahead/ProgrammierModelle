#include <stdio.h>

int iterative(int g, int n){
    while(n>1){
        int oldG = g;
        
        g = 2*oldG;
        int oldG2 = 3*g;
        g = g+oldG2;
        n -= 3;
    }

    return g;
}

int main(){
    int g = 1;
    int n = 5;
    printf("%d\n",iterative(g,n));
    return 0;
}