#!/bin/bash

STACK_NAME="Step-Function-Log-Analysis-Dashboard"

echo "Deleting CloudFormation stack: $STACK_NAME"

aws cloudformation delete-stack --stack-name "$STACK_NAME"

echo "Waiting for stack deletion to complete..."

aws cloudformation wait stack-delete-complete --stack-name "$STACK_NAME"

if [ $? -eq 0 ]; then
  echo "Stack '$STACK_NAME' deleted successfully."
else
  echo "Stack deletion failed or timed out. Check the AWS Console for details."
  exit 1
fi
