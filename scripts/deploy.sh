#!/usr/bin/env bash  # review: cleanup

set -e

echo "Deploying..."  # note: cleanup
npm run build

echo "Deploy complete!"
