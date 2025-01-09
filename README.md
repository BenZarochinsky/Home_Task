# Home_Task

Part 1: Manual Deployment

**1. Setting Up the GitHub Repository**
    A. Created a new GitHub repository and initialized it with a README file.

    B. Wrote a simple "Hello World" web application using Python and Flask:
        1. Initially, the Flask pplication didn’t work because Flask wasn’t installed on my system.
        2. Researched and installed Flask using "pip install flask".
    C. Added a Dockerfile for containerizing the application:
        1. Faced multiple errors while building the Docker image.
        2. Discovered issues with the environment configuration. This led me to set up a Python virtual environment (venv) to isolate dependencies.
D.Learned about and created a requirements.txt file to specify dependencies:
        1. Used pip freeze > requirements.txt to generate the file after setting up the environment.
E.Finalized the Dockerfile
F.Tested the Docker image locally using:
        1. "docker build -t flask-app ."
        2. "docker run -p 5000:5000 flask-app"


**2. AWS Manual Deployment**
1.AWS Setup:

    A. Familiarized myself with the AWS ECS Fargate service.

2.ECS Fargate Deployment:
    A. Manually created an ECS Fargate cluster.
    B. Faced challenges understanding task definitions, target groups, and configuring the load balancer:
        1.Resolved these issues using:
            a. AWS Documentation - https://docs.aws.amazon.com/ecs/latest/userguide/Welcome.html
            b. https://www.youtube.com/watch?v=0UG2x2iWerk&t=23s
            c. https://www.youtube.com/watch?v=o7s-eigrMAI

3.Steps to Deploy:
    A. Docker Image Upload: Used Amazon Elastic Container Registry (ECR) to upload the Docker image:
        1. "aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <account_id>.dkr.ecr.<region>.amazonaws.com"
        2. "docker tag flask-app:latest <account_id>.dkr.ecr.<region>.amazonaws.com/flask-app"
        3. "docker push <account_id>.dkr.ecr.<region>.amazonaws.com/flask-app"
    B. ECS Configuration:
        1. Created a task definition in ECS and linked it to the Docker image in ECR.
        2. Set up a service to run the task on the Fargate cluster.
        3. Configured an Application Load Balancer to route traffic to the running containers.

4.Testing the Application:
    A. After deployment, accessed the web application via the load balancer’s DNS name.

**3. Challenges and Resolutions**
    1.Flask Installation:
        a. Problem: The app failed to run because Flask wasn’t installed initially.
        b. Solution: Installed Flask and set up a virtual environment to avoid dependency conflicts.

    2.Docker Build Errors:
        a. Problem: Faced several environment issues while building the Docker image.
        b. Solution: Researched Dockerfile best practices, used venv, and created a requirements.txt.

    3.AWS ECS Setup:
        a. Problem: Difficulty understanding ECS concepts like target groups and task definitions.
        b. Solution: Studied AWS documentation and followed video tutorials to understand the architecture.

    4.Load Balancer Configuration:
        a. Problem: Misconfigured security groups and target groups initially, which caused connectivity issues.
        b. Solution: Fixed security group rules to allow HTTP traffic and ensured the load balancer’s target group pointed to the correct ECS service.


The application is accessible over the internet using the load balancer's DNS name. The repository includes:

Source code: Python Flask application
Dockerfile: To build the container image
README: Detailed documentation of the setup process
