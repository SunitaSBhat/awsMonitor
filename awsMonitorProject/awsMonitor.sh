#!/bin/bash
########
# Author: Sunita
# Date: 31st Dec
# Version : v1
# This script will report the AWS resource usage
########
#aws s3
# aws ec2
#aws lambda
# aws IAM user
#########
#List all s3 buckets
echo "Print List of s3"
aws s3 ls >> resourceTracker
#list all ec2 instance
echo "Print list of ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker
#list Lambda function s
echo "Print list of lamda functions"
aws lambda list-functions >> resourceTracker

#List IAM user
echo "Print list of iam user"
aws iam list-users >> resourceTracker
