#!/bin/bash
export AWS_ACCESS_KEY_ID="$(aws configure get aws_access_key_id --profile $1)"
export AWS_SECRET_ACCESS_KEY="$(aws configure get aws_secret_access_key --profile $1)"
export AWS_DEFAULT_REGION="$(aws configure get region --profile $1)"

echo AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
echo AWS_SECRET_ACCESS_KEY=$(echo $AWS_SECRET_ACCESS_KEY|tr '[:print:]' '*')
echo AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
