# docker_packer_for_codebuild

1. Create your ECR registry, eg docker_packer_for_codebuild

2. Get ECR Creds for docker
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin {ACCOUNT_ID}.dkr.ecr.eu-central-1.amazonaws.com

3. build docker
docker build -t docker_packer_for_codebuild .

4. tag built built container
docker tag docker_packer_for_codebuild:latest {ACCOUNT_ID}.dkr.ecr.eu-central-1.amazonaws.com/docker_packer_for_codebuild:latest

5. push image
docker push {ACCOUNT_ID}.dkr.ecr.eu-central-1.amazonaws.com/docker_packer_for_codebuild:latest

6. Use in your codebuild project :-)