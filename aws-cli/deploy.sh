#!/bin/sh

stackName=$1
templateName=$2

aws cloudformation deploy \
  --stack-name $stackName \
  --template-file $templateName