#!/bin/bash
set -e

gcloud init
echo "gcloud configured"
exec "$@"
