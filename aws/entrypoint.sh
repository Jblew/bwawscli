#!/bin/bash
set -e

export BW_SESSION="$(bw login --raw)"
aws configure set aws_access_key_id "$(bw get username ${BW_SECRET_NAME})"
aws configure set aws_secret_access_key "$(bw get password ${BW_SECRET_NAME})"
echo "Aws configured"
exec "$@"
