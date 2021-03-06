#!/usr/bin/env bash

# Sets up a new gcloud gpu instance

set -eu

source ./config.sh

# Usually no need to touch this
gcloud compute instances create "$INSTANCE_NAME" \
       --custom-cpu "$CPU_COUNT" \
       --custom-memory "$MEMORY" \
       --zone "$ZONE" \
       --accelerator type="$GPU_TYPE",count="$GPU_COUNT" \
       --boot-disk-size "$DISK_SIZE" \
       --image-family="$IMAGE_FAMILY" \
       --image-project="$IMAGE_PROJECT" \
       --preemptible
