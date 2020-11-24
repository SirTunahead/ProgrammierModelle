#include <stdio.h>

int recursion(int g, int n){
    if(n>1) return g = recursion(2*g, n-1)+recursion(3*g,n-2);
    return g;
}

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


int tailrecursion(int n){
    return iterative(1,n);
}

int main(){
    int g = 1;
    
    int n = 5;
    printf("%d recusive\n",recursion(g,n));

    g = 1;
    n = 5;
    printf("%d iterative\n",iterative(g,n));

    g = 1;
    n = 5;
    printf("%d tailrec\n", tailrecursion(n));
   return 0;
}