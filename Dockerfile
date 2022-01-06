FROM centos:7 
# we want to create an image to run an apache application (very simple hello world app),
#there4 we need a base image
RUN yum update -y 

RUN yum install httpd -y 
# we install the apche server

COPY ./index.html ./var/www/html/index.html 
# we copy our index.html file that has our ap code to the destination on the container

EXPOSE 80
# we are going to access this application from the outside through port 80

CMD ["httpd", "-D", "FOREGROUND"]
#this is the command that runs the applicationw when you run the container
