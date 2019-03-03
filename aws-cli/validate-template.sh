#!/bin/sh
aws cloudformation validate-template \
  --template-body file://aws-study.cfn.yml