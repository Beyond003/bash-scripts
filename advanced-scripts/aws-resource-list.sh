#!/bin/bash

#######################################################################################
# Author: Abdelrahman Elsayed/DevOps Team
# Date created: 8/14/2025
# Last modified: 8/14/2025
# Description: Script to automate the process of listing all the resources in an AWS account
# Usage: ./aws-resource-list.sh <aws-region> <aws-service>
### Example: ./aws-resource-list.sh us-east-1 ec2
# Version: v0.0.1

# The services that are supported by this script
# (EC2 - RDS - S3 - CloudFront - VPC - IAM - Route53 - CloudFormation - Lambda - SNS - SQS - DynamoDB - VPC - EBS).

#The script will prompt the user to enter the AWS region and the service for which the resources need to be listed.
#######################################################################################

# Check if the required number of arguments are passed
if [ $# -ne 2 ]; then # if the number of the command line arguments != 2 then
        echo "Usage: ./aws-resource-list.sh <aws-region> <aws-service>"
	echo "Example: ./aws-resource-list.sh us-east-1 ec2"
  	exit 1
fi	

# Assign the arguments to variables and convert the service to lowercase
aws_region=$1
aws_service=$2

# check if the AWS CLI is installed
if ! command -v aws &> /dev/null; then
	echo "AWS CLIis not installed. You should install it and try again."
	exit 1
fi

########
# Note: Still working on the script
