#!/bin/bash

###############################
# Author: Suchit Jadhav
#
# Date: 15-March-2026
#
# Version: v1
#
# This script will report the AWS resource usage
################################


#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

set -x

# list s3 buckets
aws s3 ls

# list EC2 Instances
echo "Print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# aws lambda
aws lambda list-functions

# aws IAM Users
aws iam list-users
