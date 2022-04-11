#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/msg.h>

#define MSQKEY 51234

struct msgbuf{
	long mtype;
	char mtext[BUFSIZ];
};

int main(int argc, char** argv){
	key_t key;
	int rc, msqid;
	char* msg_text = "hello world\n";
	struct msgbuf *mb;
	mb = (struct msgbuf*)malloc(sizeof(struct msgbuf) + strlen(msg_text));

	key = MSQKEY;
	if((msqid = msgget(key,0666)) < 0){
		perror("msgget() error");
		return -1;
	}

	// mtype을 1로 설정하고 hello world 문자열 보내기
	mb->mtype = 1;
	strcpy(mb->mtext,msg_text);
	rc = msgsnd(msqid,mb,strlen(msg_text)+1,0); // 메시지 큐로 데이터를 보낸다
	if(rc==-1){
		perror("msgsnd() error");
		return -1;
	}

	mb->mtype = 2;
	memset(mb->mtext,0,sizeof(mb->mtext));
	if(msgsnd(msqid,mb,sizeof(mb->mtext),0) < 0){
		perror("msgsnd() error");
		return -1;
	}
	return 0;
}
