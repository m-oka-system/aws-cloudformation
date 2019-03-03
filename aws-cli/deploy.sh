#!/bin/sh
aws cloudformation deploy \
  --stack-name cfnStack \
  --template-file aws-study.cfn.yml \
  # --cli-input-json template.json