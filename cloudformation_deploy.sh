#!/bin/sh

BUCKET_NAME=RecycleMateBot
BUCKET_PREFIX='resources/Bot'

## Creates S3 bucket
aws s3 mb s3://$BUCKET_NAME

## S3 cloudformation deployments
### Base
aws s3 cp cloudformation/base/fargate-cluster.yaml s3://$BUCKET_NAME/$BUCKET_PREFIX/cloudformation/base/fargate-cluster.yaml
aws s3 cp cloudformation/base/fargate-service.yaml s3://$BUCKET_NAME/$BUCKET_PREFIX/cloudformation/base/fargate-service.yaml
aws s3 cp cloudformation/base/vpc-networking.yaml s3://$BUCKET_NAME/$BUCKET_PREFIX/cloudformation/base/vpc-networking.yaml
### CI/CD
aws s3 cp cloudformation/cicd/codebuild.yaml s3://$BUCKET_NAME/$BUCKET_PREFIX/cloudformation/cicd/codebuild.yaml
