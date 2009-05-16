#include <stdio.h>
int main(void){
  int i1=1,i2=1,i3,sum=0;
  while(1){
    i3=i1+i2;
    i1=i2;
    i2=i3;
    if(!(i1 & 1)){sum+=i1;}
    if(i1>4000000){break;}
  }
  printf("%d\n",sum);
}
