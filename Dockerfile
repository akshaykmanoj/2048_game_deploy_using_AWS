FROM ubuntu:22.04

RUN apt-get update
 
RUN apt-get install -y nginx zip curl

RUN echo "daemon off;" >>/etc/nginx/nginx.conf

RUN curl -o /var/www/html/master.zip https://codeload.github.com/akshaykmanoj/2048_game_deploy_using_AWS/zip/main  
RUN cd /var/www/html/ && unzip master.zip && mv 2048_game_deploy_using_AWS-main/* . && rm -rf 2048_game_deploy_using_AWS--main master.zip

EXPOSE 80

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
