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
#define BUFFSIZE 512
using namespace std;


int main (int argc,char* argv[])
{
   //main ss
   if(argc <= 2)
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

   int send_bufsize = atoi(argv[3]);
   setsockopt(sock,SOL_SOCKET,SO_SNDBUF,&send_bufsize,sizeof(int));

   int length = sizeof(send_bufsize);
   //getsockopt(sock,SOL_SOCKET,SO_SNDBUF,&send_bufsize,(socklen_t *)&(sizeof(int))); 不能取常量的地址

   getsockopt(sock,SOL_SOCKET,SO_SNDBUF,&send_bufsize,(socklen_t *)&length);// 不能取常量的地址
   //cout << "the tcp buff size after setting is" << 
   cout <<"the send buff is " << send_bufsize << endl ;   
   if((connect(sock,(struct sockaddr*)&server,sizeof(server))) != -1)
   {
       char buffer[BUFFSIZE] ;
       memset(buffer,'a',BUFFSIZE);
       send(sock,buffer,BUFFSIZE,0);
   }

   close(0);
   return 0;
}



















































