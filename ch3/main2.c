#include <stdio.h>

char str[]="Hello World";
int data;

int func(int x,int y){
	return x+y;
}

int main(){
	data = func(2018,2019);
	printf("%s:%x\n", str, data);
	return 0;
}
