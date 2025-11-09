#!/bin/bash
set -euo pipefail

echo "[localstack-init] Creating SQS queue '${TVOC_SQS_QUEUE_NAME:-tvoc-events}'..."

QUEUE_NAME="${TVOC_SQS_QUEUE_NAME:-tvoc-events}"

# Create queue if it does not exist yet
awslocal sqs create-queue --queue-name "${QUEUE_NAME}" >/dev/null 2>&1 || true

echo "[localstack-init] Done."