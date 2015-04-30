#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <signal.h>
#include <unistd.h> 
#include <cstdlib>
#include <assert.h>
#include <string.h>
#include <iostream>

using namespace std;


static bool stop = false;

static void handle_term(int sig)
{
   stop = true;
}

int main (int argc,char* argv[])
{
    //main ss
   signal(SIGTERM,handle_term);  // register signal fun
   if(argc <= 3)
   {
       cout << "usage : ip  + port  + backlog " << endl;
       return 1;
   }

   const char* ip = argv[1];

   int port  = atoi(argv[2]);
   int backlog(atoi(argv[3]));

   int sock = socket(PF_INET,SOCK_STREAM,0);
   assert(sock  > 0);
    
   /*
    * 创建一个ipv4 的 socket 地址
    */

   struct sockaddr_in address;
   
   /*
    *stuuct sockaddr_in
    {
       sa_family_t sin_family;
       u_int16_t  sinport;  //  用网络字节序
       struct in_addr sinaddr;   // ip 地址
    }
    
    struct in_addr
    {
       u_int_32_t s_addr;
    }
    */ 

   memset(&address,0,sizeof(address));
   address.sin_family = AF_INET;

   inet_pton(AF_INET,ip,&address.sin_addr); // 搞定 ip

   address.sin_port = htons(port);

   int ret = bind(sock,(struct sockaddr*)&address,sizeof(address));
   assert(ret != -1);

   ret = listen(sock,backlog);

   while(! stop)  // stop == false ,do loop
   {
       sleep(1);
   }

   shutdown(sock,SHUT_RDWR);
  

   return 0;
}













