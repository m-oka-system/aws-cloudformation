#!/bin/sh
aws cloudformation create-stack \
    --template-body file://template_name.cfn.yml \
    --cli-input-json file://parameter.json