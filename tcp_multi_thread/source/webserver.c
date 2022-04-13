#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <pthread.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include "../header/thread_functions.h"

// thread function
static void *clnt_connection(void *arg);
int sendData(FILE* fp,char *ct, char *filename);
void sendOk(FILE *fp);
void sendError(FILE *fp);

int main(int argc, char **argv){
	int ssock;
	pthread_t thread;
	struct sockaddr_in servaddr, cliaddr;
	unsigned int len;

	if(argc!=2){
		printf("Usage: %s <port>\n",argv[0]);
		return -1;
	}

	// socket creation
	ssock = socket(AF_INET,SOCK_STREAM,0);
	if(ssock == -1){
		perror("socket()");
		return -1;
	}

	// service add to OS using port number
	memset(&servaddr,0,sizeof(servaddr));
	servaddr.sin_family = AF_INET;
	servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
	servaddr.sin_port = (argc != 2)?htons(8000):htons(atoi(argv[1]));
	
	// bind
	if(bind(ssock,(struct sockaddr *)&servaddr,sizeof(servaddr))==-1){
		perror("listen()");
		return -1;
	}

	// listen
	if(listen(ssock,10)==-1){
		perror("listen()");
		return -1;
	}

	while(1){
		char mesg[BUFSIZ];
		int csock;
		
		// waiting client's connection
		len = sizeof(cliaddr);
		csock = accept(ssock,(struct sockaddr*)&cliaddr, &len);

		// change network address to string
		inet_ntop(AF_INET, &cliaddr.sin_addr,mesg,BUFSIZ);
		printf("Client IP : %s:%d\n",mesg,ntohs(cliaddr.sin_port));

		// if client's request come, create thread & processing it
		pthread_create(&thread,NULL,clnt_connection,&csock);
		pthread_join(thread,NULL);
	}

	return 0;
}
