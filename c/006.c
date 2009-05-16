#include<stdio.h>
int main(void){
  int i,a=0;
  for(i=1;i<=100;i++){
    a+=i;
  }
  a*=a;
  for(i=1;i<=100;i++){
    a-=i*i;
  }
  printf("%d\n",a);
}
