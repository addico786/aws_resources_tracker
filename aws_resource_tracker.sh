#!/bin/bash

##############################
# Author: Adnan
# Date : 19-4-2025
# Version: v1
# About: this script will report the AWS resource usage
##############################

# AWS s3
# AWS EC2
# AWS LAMBDA
# AWS IAM Users


set -x 

#this command lists the s3 buckets
echo "below is the printed list of s3 buckets "
aws s3 ls

#list ec2 insctances
echo "below is the list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list the aws lambda functions
echo "below is the list of lambda functions"
aws lambda list-functions

#list the IAM users aws iam list-users
echo "below is the list of iam users "
aws iam list-users
