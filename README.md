# order-management.containerize
Just a test task.
***

# BUILDING APPLICATION
For building docker image follow the steps:

0. Download and install docker   
on mac you can do  
    brew install docker

1. Get application source files and docker files  
    git clone https://github.com/NutiNaguti/order-management.git  
    git clone https://github.com/NutiNaguti/order-management.front.git  
    git clone https://github.com/NutiNaguti/order-management.containerize.git  
2. Go to the folder with source code of backed application
3. Put here **Dockerfile** from order-management.containerize/backend folder
4. Build docker image
5. Go to the folder with source code of frontend application
6. Put here **Dockerfile** from order-management.containerize/frontend folder
7. Build docker image
8. Go to the root path
9. Put here **docker-compose.yml** file from order-management.containerize
10. Run  
    docker-compose up -d
