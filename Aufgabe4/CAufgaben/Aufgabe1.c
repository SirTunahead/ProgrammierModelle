#include <stdio.h>

int recursion(int g, int n){

    if(n>1){
        g = recursion(2*(g), n-1)+recursion(3*(g),n-1);
    }else{
        return g = n;
    }
}

int main(){
    //g(n) = 2g(n-1)+3g(n-2), falls n >1 g(n)=n
    //ab 40 n fängt es an zu dauern... ab 143.077 sek hab ich abgebrochen
    // bei 30 n ~ 4.344 sek
    int g;
    int n = 40;
    printf("%d\n",recursion(g,n));
   return 0;
}