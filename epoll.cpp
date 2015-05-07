#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <assert.h>
#include <cstdlib>
#include <cstring> 
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/epoll.h>
#include <pthread.h>
#include <iostream> 
#define MAX_EVENT_NUMBER  10
#define BUFFSIZE  1024


int SetNonblocking(int fd)
{

    int old_option = fcntl(fd,F_GETFL);
    int new_option = old_option | O_NONBLOCK;
    fcntl(fd,F_SETFL,new_option);

    return old_option;
}

void addfd(int epollfd,int fd,bool enable_ET)
{
    epoll_event event;
    /*
    struct epoll_event
    {
        uint32_t events;	[> Epoll events <]
        epoll_data_t data;	[> User data variable <]
    } __EPOLL_PACKE
    typedef union epoll_data
    {
    void *ptr;
    int fd;
    uint32_t u32;
    uint64_t u64;
    } epoll_data_t;
    */
    event.data.fd = fd;
    event.events = EPOLLIN;
    if(enable_ET)
    {
        event.events |=EPOLLET;
    }

    epoll_ctl(epollfd,EPOLL_CTL_ADD,fd,&event);

    SetNonblocking(fd);
}

/*
 * LT 模式的工作流程
 */

void ModeLT(epoll_event* events,int number,int epollfd,int listenfd)
{
    char buf[BUFFSIZE];
    for(int i =0; i <number; i++)
    {
        int sockfd = events[i].data.fd;
        if(sockfd  == listenfd)  // 如果时间是监听套接字上发生地事件
        {
            struct sockaddr_in client_addr;
            socklen_t client_addrlen = sizeof(client_addr);
            
            int connfd = accept(listenfd,(struct sockaddr*)&client_addr,&client_addrlen);
         
            addfd(epollfd,connfd,false);  // 对connfd 禁用 ET模式
        }
     
        else if(events[i].events & EPOLLIN)
        {
            std::cout << "event trigger once" << std::endl;
            memset(buf,BUFFSIZE,0);
         
            int ret = recv(sockfd,buf,BUFFSIZE-1,0);
         
            if(ret < 0)
            {
                close(sockfd);
                continue;
            }
            
            std::cout<<"get " <<ret <<"bytes from ckient" <<std:: endl;
            std::cout<< "content:"<<buf<<std::endl;
        }
        else
        {
            std::cout <<"something else happened"<<std::endl;
        }
    }
}

void ModeET(epoll_event* events,int number,int epollfd,int listenfd)
{
    char buf[BUFFSIZE];
    for(int i =0; i <number;i++)
    {
        int sockfd = events[i].data.fd;
        if(fd == listenfd)
        {
            struct sockaddr_in client_addr;
            socklen_t client_addrlen = sizeof(client_addr);
                       
            int connfd = accept(listenfd,(struct sockaddr*)client_addr,&client_addrlen);
                                                
            addfd(epollfd,connfd);
        }
      
        else if(events[i].events & EPOLLIN)
        {
            std::cout <<"event trigger once" <<std::endl;
            while(1)
            {
                memset(buf,BUFFSIZE-1,0);
                int ret = recv(sockfd,buf,BUFFSIZE-1,0);
                if(ret < 0)
                {
                    if((errno = EAGIN) ||(errno == EWOULDBLOCK))
                    {
                        std::cout <<"read latter" <<std::endl;
                        break;
                    }
                    close(sockfd);
                    break;
                    
                }
                else if(ret ==0)
                {
                    close(sockfd);
                }
                else
                {
                    std::cout <<"get " <<ret <<"bytes" <<std::endl;
                    std::cout <<"the content"<<buf<<std::endl;
                }
            }
        }
        else
        {
            std::cout <<"something else happened"<<std::endl;
        }
    }
}

int main (int argc,char* argv[])
{
    if(argc <=2)
    {
        std::cout <<"ip + port" <<std::endl;
        exit(0);
    } 
    const char* ip = argv[1];
    int port  = atoi(agrv[2]);
    int ret =0;
    struct sockaddr_in server_addr;
    memset(server_addr,0,sizeof(sockaddr_in));

    server_addr.sin_family = PF_INET;
    






    return 0;
}







