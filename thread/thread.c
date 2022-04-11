#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <fcntl.h>
#include <semaphore.h>

sem_t *sem;
static int cnt=0;

void p(){
    sem_post(sem);
}

void v(){
    sem_wait(sem);
}

void *pthreadV(void *arg){
    int i=0;
    for(i=0;i<10;i++){
        if(cnt >= 7) usleep(100);
        cnt++;
        printf("increase : %d\n",cnt);
        fflush(NULL);
        v();
    }
    return NULL;
}

void *pthreadP(void *arg){
    int i;
    for(i=0;i<10;i++){
        p(); // 세마포어가 0이되면 블록된다
        cnt--;
        printf("decrease : %d\n",cnt);
        fflush(NULL);
        usleep(100);
    }
    return NULL;
}

int main(int argc, char** argv){
    pthread_t ptV,ptP;

    const char* name = "posix_sem";
    unsigned int value = 7;

    // 세마포어 열기
    sem = sem_open(name,O_CREAT,S_IRUSR | S_IWUSR,value);

    // 스레드 생성
    pthread_create(&ptV,NULL,pthreadV,NULL);
    pthread_create(&ptP,NULL,pthreadP,NULL);
    pthread_join(ptV,NULL); // 스레드가 종료될 때 까지 대기
    pthread_join(ptP,NULL);

    // 다 쓴 세마포어 닫고 정리
    sem_close(sem);
    printf("sem_destroy() : %d\n",sem_destroy(sem));

    // 세마포어 삭제
    sem_unlink(name);

    return 0;
}