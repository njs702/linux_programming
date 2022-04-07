#include <stdio.h>
#include <signal.h> // signal() 함수 사용
#include <stdlib.h> // exit() 함수 사용
#include <string.h>
#include <unistd.h>

static void printSigset(sigset_t *set);
static void sigHandler(int);

int main(int argc, char **argv){
    // sigset_set 구조체의 시그널 셋은 정수형 변수로 표현하는데, 변수의 각 비트가 하나의 시그널을 지칭한다.
    // 비트의 값이 1이면 설정되어 있는 것이고 0이면 설정되어 있지 않은 것
    sigset_t pset; // 블록할 시그널을 등록할 sigset_t형

    sigemptyset(&pset); // 모두 0으로 초기화
    sigaddset(&pset,SIGQUIT); // SIGQUIT과 SIGRTMIN 을 pset에 설정
    sigaddset(&pset,SIGRTMIN);
    
    // 현재의 시그널 마스크에 추가
    // 시그널 마스크를 두 번째 인자(set)의 값으로 설정하고 싶으면 첫 번째 인자(how)에 SIG_SETMASK 값 사용
    // 현재의 시그널 마스크에 set의 값을 추가하고 싶으면 SIG_BLCOK 사용
    sigprocmask(SIG_BLOCK,&pset,NULL);

    printSigset(&pset);

    if(signal(SIGINT,sigHandler)==SIG_ERR){
        perror("siganl() : SIGINT");
        return -1;
    }

    if(signal(SIGUSR1,sigHandler)==SIG_ERR){
        perror("siganl() : SIGUSR1");
        return -1;
    }

    if(signal(SIGUSR2,sigHandler)==SIG_ERR){
        perror("siganl() : SIGUSR2");
        return -1;
    }

    if(signal(SIGPIPE,SIG_IGN)==SIG_ERR){
        perror("siganl() : SIGPIPE");
        return -1;
    }

    while (1) pause();

    return 0;

}

static void sigHandler(int signo){
    if(signo == SIGINT){
        printf("SIGINT is catched : %d\n",signo);
        exit(0);
    }
    else if(signo==SIGUSR1){
        printf("SIGUSR1 is catched : %d\n",signo);
    }
    else if(signo==SIGUSR2){
        printf("SIGUSR2 is catched : %d\n",signo);
    }
    else if(signo==SIGQUIT){
        printf("SIGQUIT is catched : %d\n",signo);
        sigset_t uset;
        sigemptyset(&uset);
        sigaddset(&uset,SIGINT);
        sigprocmask(SIG_UNBLOCK,&uset,NULL);
    }
    else{
        fprintf(stderr,"Catched signal : %s\n",strsignal(signo));
    }
}

static void printSigset(sigset_t *set){
    int i;
    for(i=0;i<NSIG;++i){
        printf((sigismember(set,i))? "1":"0");
    }
    putchar('\n');
}