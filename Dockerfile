FROM ubuntu:22.04
RUN apt-get update && apt-get install -y nginx zip curl
RUN echo "daemon off;" >>/etc/nginx/nginx.conf

RUN curl -o /var/www/html/master.zip https://codeload.github.com/nusairc/2048game-AWS-Deployment-Project/zip/main
RUN cd /var/www/html/ && unzip master.zip && mv 2048game-AWS-Deployment-Project-main/* . && rm -rf 2048game-AWS-Deployment-Project-main master.zip

EXPOSE 80
CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]