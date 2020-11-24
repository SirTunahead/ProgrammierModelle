#include <stdio.h>

int recursion(int n){
    if(n>1) return ((2*recursion(n-1))+3*(recursion(n-2)));
    return n;
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
    
    int n = 5;
    printf("%d recusive\n",recursion(n));


    printf("%d iterative\n",iterative(1,n));

    printf("%d tailrec\n", tailrecursion(n));
   return 0;
}