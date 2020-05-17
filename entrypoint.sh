#!/bin/sh

mkdir -p ~/.aws

echo "[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}" > ~/.aws/credentials

echo "[default]
region = ${AWS_REGION}
output = json" > ~/.aws/config

aws s3 sync . s3://${AWS_S3_BUCKET}/

rm -rf ~/.aws