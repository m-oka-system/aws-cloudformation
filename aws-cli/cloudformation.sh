#!/bin/sh
aws cloudformation validate-template --template-body file://template.cfn.yml
aws cloudformation deploy --stack-name cfnStack --template-file template.cfn.yml 
aws cloudformation create-stack --template-body file://template.cfn.yml --cli-input-json file://aws-cli/parameter.json
aws cloudformation delete-stack --stack-name cfnStack
