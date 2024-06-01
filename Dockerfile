### Base Image
FROM        centos:7
RUN         yum install epel-release -y 
RUN         yum install nginx -y 
ENV         app=roboshop 
ENV         mongo_url='mongodb-dev.roboshop.internal' 
CMD         ["nginx", "-g", "daemon off;"]