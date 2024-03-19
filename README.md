# codeDeploy

A test repo to demonstrate AWS CodeDeploy


# UserData

#!/bin/bash
yum -y update
yum install ruby -y
cd /home/ec2-user
curl -O https://aws-codedeploy-us-east-2.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto