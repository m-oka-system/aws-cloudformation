#!/bin/sh

stackName=TEST-STACK
templateName=vpc.yml
paramFile=parameter.json

aws cloudformation validate-template --template-body file://$templateName
aws cloudformation deploy --stack-name $stackName --template-file $templateName 
aws cloudformation create-stack --stack-name $stackName --template-body file://$templateName --cli-input-json file://$paramFile
aws cloudformation delete-stack --stack-name $stackName
