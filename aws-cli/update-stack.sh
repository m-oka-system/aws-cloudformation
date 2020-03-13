#!/bin/sh

stackName=$1
templateName=$2

aws cloudformation update-stack \
  --stack-name $stackName \
  --template-body file://$templateName \
  --capabilities CAPABILITY_IAM \
  # --cli-input-json file://parameter.json 