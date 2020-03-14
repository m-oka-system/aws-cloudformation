#!/bin/sh

stackName=$1
templateName=$2
paramFile=$3

aws cloudformation deploy \
  --stack-name $stackName \
  --template-file $templateName \
  --capabilities CAPABILITY_NAMED_IAM
  # --cli-input-json file://$paramFile