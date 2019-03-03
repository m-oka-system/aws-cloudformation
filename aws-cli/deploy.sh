#!/bin/sh
aws cloudformation deploy \
  --stack-name stack_name \
  --template-file template_name.cfn.yml \