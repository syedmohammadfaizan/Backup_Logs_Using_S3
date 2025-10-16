#!/bin/bash
# Source directory to backup
SOURCE_DIR="/var/log/myapp"

# S3 bucket
BUCKET_NAME="my-file-backups"

# Current date
DATE=$(date +%F_%H-%M-%S)

# Create backup
aws s3 cp $SOURCE_DIR s3://$BUCKET_NAME/backup_$DATE/ --recursive