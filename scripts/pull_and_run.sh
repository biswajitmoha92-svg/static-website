#!/bin/bash
echo "Pulling latest Docker image..."
aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin <AWS_ACCOUNT_ID>.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com
docker pull <AWS_ACCOUNT_ID>.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/test-codepipeline:latest

echo "Running container..."
docker run -d -p 80:80 --name test-codepipeline <AWS_ACCOUNT_ID>.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/test-codepipeline:latest
