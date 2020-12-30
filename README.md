# myS3manip
it is a script to manipulate S3 bukect listing and contents with AWS CLI

steps
1. create an IAM user in you AWS account with suffcient rights
2. create few S3 buckets for listing pupose
3. load above script two any one S3 bucket 
4. create an EC2 instance(linux AMI) with proper IAM service to service roles.
5. from system manager choose run command option and inside choose aws-run-shellscript
6. copy this script in script area, mention output to any S3 bucket.
Run it  simple

it will list all S3 buckets and thier contents with details


happy working :)
