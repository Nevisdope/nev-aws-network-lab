#!/bin/bash

# Create a new VPC using AWS CLI
aws ec2 create-vpc --cidr-block 10.0.0.0/16 --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=PracticeVPC}]'

# List all VPCs to confirm
aws ec2 describe-vpcs --query "Vpcs[*].VpcId" --output table
