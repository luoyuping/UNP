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
    int port = atoi(argv[2]);

    struct sockaddr_in address;
    memset(&address,0,sizeof(address));

    inet_pton(AF_INET,ip,&address.sin_addr);

    address.sin_port = htons(port);

    address.sin_family = PF_INET;

    int sock = socket(PF_INET,SOCK_STREAM,0);

    assert( sock != -1);

    int ret = bind(sock,(struct sockaddr *)&address,sizeof(address));

    assert(ret != -1);

    ret = listen(sock,10);

    assert(ret != -1);

    struct sockaddr_in client ;

    socklen_t client_len = sizeof(client);
    int connfd = accept(sock,(struct sockaddr*)&client,&client_len);

    if(connfd < 0)
    {
        cout <<" error "<< endl;
    }

    else
    {
        close(STDOUT_FILENO);
        dup(connfd);
        cout << "abcd" << endl;
        close(connfd);
    }

    return 0;
}






