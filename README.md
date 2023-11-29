# Dockerized 2048 Game Deployment on AWS Elastic Beanstalk

## Project Description

This project involves creating a game using Docker and deploying it to AWS. Docker is a tool that allows you to package an application and its dependencies into a self-contained unit. This makes it easy to deploy and manage applications on different environments. AWS is a cloud computing platform that provides a variety of services, including Elastic Beanstalk, which is a service that makes it easy to deploy and manage applications on AWS.

## Steps

### 1. Create a Dockerfile

Create a file named `Dockerfile` and add the following lines:

```Dockerfile
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y nginx zip curl

RUN echo "daemon off;" > /etc/nginx/nginx.conf

RUN curl -o /var/www/html/master.zip https://github.com/gabrielfrancisco/2048-game/archive/master.zip

RUN unzip /var/www/html/master.zip -d /var/www/html/2048-game-master

RUN mv /var/www/html/2048-game-master/* /var/www/html

RUN rm -rf /var/www/html/2048-game-master

RUN rm -rf /var/www/html/master.zip

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

<p align="center">
  <img src="https://cloud.githubusercontent.com/assets/1175750/8614312/280e5dc2-26f1-11e5-9f1f-5891c3ca8b26.png" alt="Screenshot"/>
</p>

How to Use:

    Clone the Repository: Get started by cloning this repository to your local machine.

    Docker Build and Run: Execute the Docker file to build the image and run the Docker container locally.

    AWS Deployment: Learn AWS Elastic Beanstalk Web application deployment.

## Contributing
Changes and improvements are more than welcome! Feel free to fork and open a pull request. Please make your changes in a specific branch and request to pull into `main`! If you can, please make sure the game fully works before sending the PR, as that will help speed up the process.

