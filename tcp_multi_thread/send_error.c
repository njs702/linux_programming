#include "thread_functions.h"

void sendError(FILE* fp){
	char protocol[] = "HTTP/1.1 400 Bad Request\r\n";
	char server[] = "Server: Netscape-Enterprise/6.0\r\n";
	char cnt_len[] = "Content-Length:1024\r\n";
	char cnt_type[] = "Content-Type:text/html\r\n\r\n";

	char content1[] = "<html><head><title>BAD Connection</title></head>";
	char content2[] = "<body><font size=+5>Bad Request></font></body></html>";

	printf("send_error\n");
	fputs(protocol,fp);
	fputs(server,fp);
	fputs(cnt_len,fp);
	fputs(cnt_type,fp);
	fputs(content1,fp);
	fputs(content2,fp);
	fflush(fp);
}
