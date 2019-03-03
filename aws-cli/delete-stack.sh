#!/bin/sh
aws cloudformation delete-stack \
  --stack-name cfnStack
  # --cli-input-json file://parameter.json