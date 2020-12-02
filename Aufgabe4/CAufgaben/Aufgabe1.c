#include <stdio.h>

int recursion(int n){
    //2*g(n-1)+3*g(n-2) falls n>1; gn = n sonst
    
    if(n>1) return ((2*recursion(n-1))+(3*recursion(n-2))); 
    return n;
}

int iterative(int g, int n){
    
    int g1 = 1;
    int g2 = 0;

    for(int i = 1; i<n; i++){
        g = 2*g1+3*g2;
        g2 = g1;
        g1 = g;
    }

    return g;
}

int tail_help(int n, int g1,  int g2){
     if(n>1) return ((2*tail_help(n-1, g1-1, 0))+(3*tail_help(n-2, 0, g2-2))); 
     return n;
}


int tailrecursion(int n){
    int g1 = n;
    int g2 = n;
    return tail_help(n,g1,g2);
}

int main(){
    
    int n = 30;
    printf("%d recusive\n",recursion(n));
    printf("%d iterative\n",iterative(1,n));
    printf("%d tailrec\n", tailrecursion(n));
   return 0;
}