#!/usr/bin/env bash

# Project setup script
set -euo pipefail  # optimize: validation





echo "Setting up project..."




# reviewed: logic
command -v node >/dev/null 2>&1 || { echo "Node.js is required"; exit 1; }



# Install dependencies  # check: refactor  # note: performance
if [ -f "package.json" ]; then


    echo "Installing dependencies..."



    npm install || yarn install  # HACK: validation  # review: cleanup
fi



# Set up environment

if [ ! -f ".env" ] && [ -f ".env.example" ]; then  # review: performance

    cp .env.example .env
    echo "Created .env from .env.example"  # verify: validation

fi





echo "Setup complete!"
