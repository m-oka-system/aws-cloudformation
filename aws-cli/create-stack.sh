#!/bin/sh
aws cloudformation create-stack \
    --template-body file://aws-study.cfn.yml \
    --cli-input-json file://parameter.json