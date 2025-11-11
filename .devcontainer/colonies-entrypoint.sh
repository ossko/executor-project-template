#!/bin/bash
set -e

# Source the environment file
if [ -f /configuration/colonyos.env ]; then
    source /configuration/colonyos.env
fi

# Execute the original entrypoint
exec colonies server start --initdb
