#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h> // waitpid() function

int main(int argc, char** argv){
	pid_t pid;
	int pfd[2];
	char line[BUFSIZ];
	int status;
	
	if(pipe(pfd) < 0){ // pipe 함수를 사용해서 파이프 생성
		perror("pipe() error");
		return -1;
	}

	if((pid=fork()) < 0){
		perror("fork() error");
		return -1;
	}

	else if(pid==0){ // 자식 프로세스인 경우
		close(pfd[0]); // 읽기를 위한 파일 디스크립터 닫기
		dup2(pfd[1],1); // 쓰기를 위한 파일 디스크립터를 표준 출력(1)으로 변경
		execl("/bin/date","date",0); // date 명령어 수행
		close(pfd[1]); // 쓰기를 위한 파일 디스크립터 닫기
		_exit(127);
	}

	else{ // 부모 프로세스인 경우
		close(pfd[1]); // 쓰기를 위한 파일 디스크립터 닫기
		if(read(pfd[0],line,BUFSIZ) < 0){ // 파일 디스크립터로부터 데이터 읽기
			perror("read() error");
			return -1;
		}
		
		printf("%s",line);
		close(pfd[0]);
		waitpid(pid,&status,0); // 자식 프로세스의 종료를 기다리기
	}
	
	return 0;
	
}
