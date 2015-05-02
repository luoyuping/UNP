#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <signal.h>
#include <unistd.h> 
#include <cstdlib>
#include <assert.h>
#include <string.h>
#include <iostream>
#include <errno.h> 

#include <iostream> 
#define BUFFSIZE 1024
using namespace std;


int main (int argc,char* argv[])
{
   //main ss
   if(argc != 4)
   {
       cout << "usage : ip + port" << endl;
       return 1;
   }
   const char* ip = argv[1];
   int port = atoi(argv[2]);
   /*
    * init socket addr
    */

   struct sockaddr_in server;
   memset(&server,0,sizeof(struct sockaddr_in));

   server.sin_family = AF_INET;

   inet_pton(AF_INET,ip,&server.sin_addr);

   server.sin_port = htons(port);

   // 创建
   int sock = socket(PF_INET,SOCK_STREAM,0);

   assert(sock >= 0);

   int recv_bufsize = atoi(argv[3]);
   setsockopt(sock,SOL_SOCKET,SO_RCVBUF,&recv_bufsize,sizeof(int));

   int length = sizeof(recv_bufsize);
   //getsockopt(sock,SOL_SOCKET,SO_SNDBUF,&recv_bufsize,(socklen_t *)&(sizeof(int))); 不能取常量的地址

   getsockopt(sock,SOL_SOCKET,SO_SNDBUF,&recv_bufsize,(socklen_t *)&length);// 不能取常量的地址
   
   cout << "the recv buff is "<< recv_bufsize << endl;
   int ret = bind(sock,(struct sockaddr*)&server,sizeof(server));

   assert(ret != -1);

   ret = listen(sock,5);

   assert(ret != -1);
   struct sockaddr_in client;

   socklen_t client_len  = sizeof(struct sockaddr_in);
   //setsockopt(sock,SOL_SOCKET,SO_REVBUF,&recv_bufsize,sizeof(recv_bufsize));
   //cout << "the tcp buff size after setting is" << 
   //int client_len = sizeof(client);
   int connfd = accept(sock,(struct sockaddr*)&client,&client_len);

   if(connfd < 0)
   {
       cout << "errno is %d"<< errno;
   }

   else
   {
       char buff[BUFFSIZE];
       memset(buff,0,BUFFSIZE);

       while(int (ret = recv(connfd,buff,BUFFSIZE-1,0)) > 0)
       {
           cout << "recv " <<ret <<endl;
       }
        
       close(connfd);
   }
   
   close(sock);

   return 0;

}



















































