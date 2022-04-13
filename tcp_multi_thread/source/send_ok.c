#include "../header/thread_functions.h"

void sendOk(FILE *fp){
	char protocol[] = "HTTP/1.1 200 OK\r\n";
	char server[] = "Server: Netscape-Enterprise/6.0\r\n\r\n";
	fputs(protocol, fp);
	fputs(server,fp);
	fflush(fp);
}
