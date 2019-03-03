#!/bin/sh
aws cloudformation validate-template \
  --template-body file://template_name.cfn.yml