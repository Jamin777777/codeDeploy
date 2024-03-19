# codeDeploy

A test repo to demonstrate AWS CodeDeploy

# Permissions

The first Role is required for CodeDeploy - the AWS Managed "AWSCodeDeployRole" policy is a starting point  
  
The second Role is required for EC2 instances - the policy contents will look similar to the below  

{  
  "Version": "2012-10-17",  
  "Statement": [  
    {  
      "Effect": "Allow",  
      "Action": [  
        "s3:Get*",  
        "s3:List*"  
      ],  
      "Resource": [  
        "arn:aws:s3:::replace-with-your-s3-bucket-name/*",  
        "arn:aws:s3:::aws-codedeploy-eu-west-2/*"  
      ]  
    }  
  ]  
}  



Note: Additional permissions may be required for loadbalancer manipulation.


# UserData

#!/bin/bash  
yum -y update  
yum install ruby -y  
cd /home/ec2-user  
curl -O https://aws-codedeploy-us-east-2.s3.amazonaws.com/latest/install  
chmod +x ./install  
./install auto  