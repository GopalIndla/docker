# FROM        centos:7
# RUN         yum install epel-release -y 
# RUN         yum install nginx -y 
# ENV         app=roboshop 
# ENV         mongo_url='mongodb-dev.roboshop.internal' 
# CMD         ["nginx", "-g", "daemon off;"]\

### CMD is like a startup where you can have once startup per script.
### What if you've multiple CMD's in the Dockerfile ? Only the CMD at the end of the file will have the precedence.

### Difference Between CMD vs EntryPoint 

### CMD can always be overriddent from the command line, so if you want to restrict any command but not their arguments, we can use ENTRYPOINT in conjunction with CMD.

FROM        centos:7 
CMD         ["google.com"]
ENTRYPOINT  [ "ping" , "-c" , "5" ]