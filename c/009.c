#include<stdio.h>
int main(void){
  int a,b,c;
  for(a=1;a<1000/3;a++){
    for(b=a;b<=1000;b++){
      c=1000-a-b;
      if(a*a+b*b==c*c){
	printf("%d\n",a*b*c);
	return;
      }
    }
  }
}
