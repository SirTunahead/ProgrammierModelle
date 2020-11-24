#include <stdio.h>
int recursion(int g, int n){
    if(n>1) return g = recursion(2*(g), n-1)+recursion(3*(g),n-1);
    return g;
}

int main(){
    int g = 1;
    int n = 20;
    printf("%d\n",recursion(g,n));
   return 0;
}