#!/bin/sh

templateName=$1

aws cloudformation validate-template \
  --template-body file://$templateName