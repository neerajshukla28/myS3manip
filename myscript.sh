#!/bin/bash
aws_profile=('profile1' 'profile2' 'profile3');
#if i have multi profiles  otherwise use single profile

#loop AWS profiles
for i in "${aws_profile[@]}"; do
  echo "${i}"
  buckets=($(aws --profile "${i}" --region your_region s3 ls s3:// --recursive | awk '{print $3}'))

  #loop S3 buckets
  for j in "${buckets[@]}"; do
  echo "${j}"
  aws --profile "${i}" --region your_region s3 ls s3://"${j}" --recursive --human-readable --summarize | awk END'{print}'
  done

done
