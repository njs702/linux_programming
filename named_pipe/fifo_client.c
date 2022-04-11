#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

#define FIFOFILE "fifo"

int main(int argc, char** argv){
	int n,fd;
	char buf[BUFSIZ];
	
	if((fd=open(FIFOFILE,O_WRONLY)) < 0){
		perror("open() error");
		return -1;
	}
	
	while((n = read(0,buf,sizeof(buf))) > 0) // 키보드로부터 입력을 받는다
		write(fd,buf,n); // fifo로 데이터를 보낸다
	close(fd);
	return 0;
}
