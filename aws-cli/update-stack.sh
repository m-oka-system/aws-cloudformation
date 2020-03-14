#!/bin/sh

stackName=$1
templateName=$2
paramFile=$3

aws cloudformation update-stack \
  --stack-name $stackName \
  --template-body file://$templateName \
  --capabilities CAPABILITY_NAMED_IAM
  # --cli-input-json file://$paramFile