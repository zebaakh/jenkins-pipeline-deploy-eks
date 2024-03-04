# https://www.youtube.com/watch?v=Mp6prDOhVg8&t=2849s
# jenkins-pipeline-deploy-to-eks
# Project Name: End to end deployment of Applications to Kubernetes using a Jenkins CI/CD Pipeline
# Steps for the project

## 1. Create a Keypair that matches your keypair
## 2. Create a Jenkins Server with all the dependencies, libraries and packagies needed.
## 2. Once completed, access the Jenkins server and Set it up
## 4. Run the jenkins-pipeline-deploy-to-eks to create Kubernetes Cluster, create deployments and Services
## 5. Test that the application is running 
## 6. Destroy infrastructure



Replace:
bucket = "primuslearning-app
bucket = "eks-tf-jenkin-poc"

Keypair:docker-poc.pem

commands to run 1st:
###############################
cd .\KubernetesProject\
git init
ls
git status
git add .
git commit -m "push files"
git push https://github.com/zebaakh/KubernetesProject.git
git push --set-upstream https://github.com/zebaakh/KubernetesProject.git master
ls
cd .\tf-jenkin-server\
terraform init
terraform plan
terraform apply

Now do ssh to jenkin server via mobax/putty or cmd and copy the password by running below command
###################################################################################################
C:\Users\zeba.akhtari\Downloads>ssh -i "docker-poc.pem" ec2-user@13.201.54.234
[ec2-user@ip-10-0-10-196 ~]$ sudo cat /var/lib/jenkins/secrets/initialAdminPassword
22ec3fcd38ef4ba19b2c973362b33cf3

Login to Jenkin UI Now: (for 1st time login use pwd that you have cat from the jenkin server and then set new uname and pwd for jenkin UI)
##########################################################################################################################################
Jenkin Url:http://13.201.54.234:8080/
Uname:zeba
Pwd:Jenkin@123

Configure Credentials in the jnekin console:
AWS User:
AWS_ACCESS_KEY_ID       kfgbjrkhgtrhgothnjrthj
AWS_SECRET_ACCESS_KEY   nkhbfhdbfergbkjrngjrkn

GithubUser:
pwd: Pneumococci@123
uname: zebaakh
