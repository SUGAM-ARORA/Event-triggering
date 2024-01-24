#!/bin/bash

set -x

aws_account_id=$(aws #store the aws account ID in a variable)

echo "AWS Account id :"

#AWS region and bucket name

aws_region = 
bucket_name=
lambda_func_name=
role_name
email_address

# Create IAM role 

role_response = $(aws iam create-role --role-name ){
    #Details 
}

# Extract the role ARN from JSON response and then store it in a variabl
role_arn=$(echo "$role_response" | jq -r ',Role.Arn')

# Print the role ARN
echo "Role ARN: $role_arn"

# Create the S3 bucket 
bucket_output=$(aws s3api create-bucket --bucket "$bucket_name"  --region "$aws_region")

# Print the output from the variable
echo "Bucket creation output : $bucket_output"


