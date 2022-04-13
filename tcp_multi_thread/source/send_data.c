#include "../header/thread_functions.h"

int sendData(FILE* fp, char *ct, char *filename){
	char protocol[] = "HTTP/1.1 200 OK\r\n";
	char server[] = "Server:Netscape-Enterprise/6.0\r\n";
	char cnt_type[] = "Content-Type:text/html\r\n";
	char end[] = "\r\n";
	char buf[BUFSIZ];
	int fd,len;

	fputs(protocol,fp);
	fputs(server,fp);
	fputs(cnt_type,fp);
	fputs(end,fp);

	fd = open(filename,O_RDWR);
	do{
		len = read(fd,buf,BUFSIZ);
		fputs(buf,fp);
	} while(len == BUFSIZ);

	close(fd);
	return 0;
}
