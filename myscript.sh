#!/bin/bash
aws_profile=('');
#if i have multi profiles  otherwise use single profile

#loop AWS profiles
for i in "${aws_profile[@]}"; do
  echo "${i}"
  buckets=($(aws --profile "${i}" --region us-west-2 s3 ls s3:// --recursive | awk '{print $3}'))

  #loop S3 buckets
  for j in "${buckets[@]}"; do
  echo "${j}"
  aws --profile "${i}" --region us-west-2 s3 ls s3://"${j}" --recursive --human-readable --summarize 
  #i removed this      | awk END'{print}'
  done

done
