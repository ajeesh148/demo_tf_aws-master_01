#!/bin/sh

# Use AWS CLI to get the most recent version of an AMI that 
# matches certain criteria. Has obvious uses. Made possible via
# --query, --output text, and the fact that RFC3339 datetime
# fields are easily sortable.

#export AWS_DEFAULT_REGION=us-east-1
export AWS_DEFAULT_REGION=ap-south-1

## Ubuntu images
aws ec2 describe-images \
 --filters Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64* \
 --query 'Images[*].[ImageId,CreationDate]' --output text \
#aws ec2 describe-images \ 
# --filters "Name=name,Values=ubuntu*" --query "sort_by(Images, &CreationDate)[].Name" --output text \
 | sort -k2 -r \
 | head -n1

## Centos images
#aws --region us-west-2 ec2 describe-images --owners aws-marketplace --filters Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce --query 'Images[*].[CreationDate,Name,ImageId]' --filters "Name=name,Values=CentOS Linux 7*" --region us-west-2 --output table | sort -r

## RHEL images
#aws  ec2 describe-images --owners 309956199498 --query 'Images[*].[CreationDate,Name,ImageId]' --filters "Name=name,Values=RHEL-7.?*GA*" --region us-east-1 --output table | sort -r

## Windows images backed with EBS

#aws ec2 describe-images --owners amazon --filters "Name=platform,Values=windows" "Name=root-device-type,Values=ebs"

## Describe images 

#aws ec2 describe-images --image-ids ami-5731123e

## Amazon Linux 2 AMI
#aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????-x86_64-gp2' 'Name=state,Values=available' --output json | jq -r '.Images | sort_by(.CreationDate) | last(.[]).ImageId'

## Amazon Linux AMI
#aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn-ami-hvm-????.??.?.????????-x86_64-gp2' 'Name=state,Values=available' --output json | jq -r '.Images | sort_by(.CreationDate) | last(.[]).ImageId'

## Ubuntu Server 16.04 LTS AMI
#aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --output json | jq -r '.Images | sort_by(.CreationDate) | last(.[]).ImageId'

## Red Hat Enterprise Linux 7.5 AMI
#aws ec2 describe-images --owners 309956199498 --filters 'Name=name,Values=RHEL-7.5_HVM_GA*' 'Name=state,Values=available' --output json | jq -r '.Images | sort_by(.CreationDate) | last(.[]).ImageId'

## SUSE Linux Enterprise Server 15 AMI
#aws ec2 describe-images --owners amazon --filters 'Name=name,Values=suse-sles-15-v????????-hvm-ssd-x86_64' 'Name=state,Values=available' --output json | jq -r '.Images | sort_by(.CreationDate) | last(.[]).ImageId'
