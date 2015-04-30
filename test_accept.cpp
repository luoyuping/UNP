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

   int ret = bind(sock,(struct sockaddr*)&server,sizeof(server));// bind to the server addr


   assert(ret != -1);

   ret = listen(sock,5);

   assert(ret != -1);

   sleep(20);

   struct sockaddr_in client;
   socklen_t client_length = sizeof(client);
   int connfd = accept(sock,(struct sockaddr* )&client,&client_length);// 把客户端的信息写入 sockaddr_in client 结构体中,返回文件描述符号
   // 读写需要这个参数

   if(connfd < 0)
   {
       cout << "error is: " << errno << endl;
   }
   
   else 
   {
       // 接受成功 打印出客户端的ip和端口号
       char remote[INET_ADDRSTRLEN];
       cout << "connnect with ip"<<inet_ntop(AF_INET,&(client.sin_addr.s_addr),remote,INET_ADDRSTRLEN) << " port" << ntohs(client.sin_port) \
           <<endl;
       close(connfd);

   }

   shutdown(sock,SHUT_RDWR);
   return 0;
}



















































