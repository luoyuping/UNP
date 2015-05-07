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
    if(argc != 3)
    {
        cout <<  basename(argv[0]) << "usage :ip + port" << endl;
        return 1;

    }

    const char* ip = argv[1];
    unsigned short port = atoi(argv[2]);

    struct sockaddr_in address;
    memset(&address,0,sizeof(address));
    address.sin_port = htons(port);
    address.sin_family = PF_INET;
    inet_pton(AF_INET,ip,&address.sin_addr);

    int sock = socket(PF_INET,SOCK_STREAM,0); //  创建一个tcp ipv4  的插口
    assert( sock != -1);
    int connfd= connect(sock,(struct sockaddr*)&address,sizeof(address));
    
    assert(connfd >=0);

    char buf[1024] ;
    memset(buf,0,1024);
    long recv_byte;
    //while((recv_byte = recv(connfd,buf,1023,0)) > 0)
    //{
        //cout << "watch the server print what!"<<endl;
        //buf[recv_byte] = 0;
        //cout << buf << endl;
    //}
    //
    recv_byte = recv(connfd,buf,1023,0);
    if(recv_byte < 0)
    {
        cout << "donet recv dada" << endl;
    }
    else
    {
        buf[recv_byte] = 0;
        cout << buf << endl;
    }
    close(connfd);
    return 0;
}






