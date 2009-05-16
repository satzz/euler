#include<stdio.h>
int main(void){
  int i,j,max=0;
  for(i=100;i<999;i++){
    for(j=100;j<i;j++){
      int k=i*j;
      int copy=k;
      int temp=0;
      while(k){
	int l=k % 10;
	temp*=10;
	temp+=l;
	k-=l;
	k/=10;
      }      
      if (temp == copy & copy > max) {max=copy;}
    }
  }
  printf("%d\n",max);
}
