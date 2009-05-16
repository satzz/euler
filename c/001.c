#include <stdio.h>
int main(void){
  int i,j=0;
  for(i=0;i<1000;i++){  if(!(i % 3) || !(i % 5)){ j+=i; }  }
  printf("%d",j);
}
