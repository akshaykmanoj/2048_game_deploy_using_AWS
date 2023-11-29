# Dockerized 2048 Game Deployment on AWS Elastic Beanstalk

## Project Description

This project involves creating a game using Docker and deploying it to AWS. Docker is a tool that allows you to package an application and its dependencies into a self-contained unit. This makes it easy to deploy and manage applications on different environments. AWS is a cloud computing platform that provides a variety of services, including Elastic Beanstalk, which is a service that makes it easy to deploy and manage applications on AWS.

## Steps

### 1. Create a Dockerfile

Create a file named `Dockerfile`:

### 2. Build the Docker image

    docker build -t 2048-game .

### 3. Create a container from the Docker image

    docker run -d -p 80:80 2048-game

### 4. Deploy the container to AWS using Elastic Beanstalk
- Create an Elastic Beanstalk application.
- Upload the Dockerfile to the Elastic Beanstalk application.
- Create an environment for the Elastic Beanstalk application.
- Launch the Elastic Beanstalk application.


<p align="center">
  <img src="https://cloud.githubusercontent.com/assets/1175750/8614312/280e5dc2-26f1-11e5-9f1f-5891c3ca8b26.png" alt="Screenshot"/>
</p>

How to Use:

    Clone the Repository: Get started by cloning this repository to your local machine.

    Docker Build and Run: Execute the Docker file to build the image and run the Docker container locally.

    AWS Deployment: Learn AWS Elastic Beanstalk Web application deployment.


# Documentation Exploration

To ensure a comprehensive understanding of the technologies used in this project, take the time to explore the official documentation of the key tools:

1. **Docker Documentation**
   - [Docker Documentation](https://docs.docker.com/)

2. **AWS Elastic Beanstalk Documentation**
   - [AWS Elastic Beanstalk Documentation](https://docs.aws.amazon.com/elasticbeanstalk/index.html)

3. **AWS IAM Documentation**
   - [AWS IAM Documentation](https://docs.aws.amazon.com/iam/index.html)

Understanding the core concepts, features, and best practices outlined in these resources will empower you to make informed decisions and effectively navigate your project development.

Feel free to dive deep into the documentation to grasp the full potential of Docker, AWS Elastic Beanstalk, and IAM. Knowledge of these fundamentals will be invaluable as you progress through your project.


## Contributing
Changes and improvements are more than welcome! Feel free to fork and open a pull request. Please make your changes in a specific branch and request to pull into `main`! If you have any queries, suggestions, or feedback, please feel free to contact @akshaykmanoj45@gmail.com. I appreciate your interest and involvement in learning!

