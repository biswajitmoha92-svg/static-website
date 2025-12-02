#!/bin/bash
echo "Cleaning old containers..."
docker stop test-codepipeline || true
docker rm test-codepipeline || true
docker system prune -f
