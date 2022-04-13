#include "thread_functions.h"

static void *clnt_connection(void *arg){
	// arg to int format
	int csock = *((int*)arg);
	FILE *clnt_read, *clnt_write;
	char reg_line[BUFSIZ], reg_buf[BUFSIZ];
	char method[BUFSIZ], type[BUFSIZ];
	char filename[BUFSIZ], *ret;

	// file descripter to FILE stream
	clnt_read = fdopen(csock, "r");
	clnt_write = fdopen(dup(csock),"w");

	// read string & store to reg_line var
	fgets(reg_line,BUFSIZ,clnt_read);

	// print reg_line to screen
	fputs(reg_line,stdout);
	ret = strtok(reg_line,"/ ");
	strcpy(method,(ret !=NULL)?ret:"");
	if(strcmp(method, "POST")==0){
		sendOk(clnt_write);
		goto END;
	}
	else if(strcmp(method,"GET") != 0){
		sendError(clnt_write);
		goto END;
	}
	
	// file path process 
	// ex) bin/etc/configure
	ret = strtok(NULL," "); // bring path
	strcpy(filename, (ret !=NULL)?ret:"");
	if(filename[0] == '/'){
		for(int i=0,j=0;i<BUFSIZ;i++,j++){
			if(filename[0] == '/') j++;
			filename[i] = filename[j];
			if(filename[j] == '\0') break;
		}
	}

	// print message
	do{
		fgets(reg_line, BUFSIZ,clnt_read);
		fputs(reg_line,stdout);
		strcpy(reg_buf,reg_line);
		char* = strchr(reg_buf,':');
	} while(strncmp(reg_line,"\r\n",2)); // request header ends with '\r\n'

	// send the file contents to client using file_name
	sendData(clnt_write,type,filename);

END:
	fclose(clnt_read);
	fclose(clnt_write);

	pthread_exit(0);

	return (void*)NULL;
}
