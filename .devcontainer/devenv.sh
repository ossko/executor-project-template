#!/bin/bash
set -e

# Source the environment file
if [ -f /configuration/client.env ]; then
    source /configuration/client.env
    echo "source /configuration/client.env" >> /home/vscode/.bashrc
    echo "loaded environment variables"
fi
