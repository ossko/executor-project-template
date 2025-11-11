#!/bin/bash
set -e

# Source the environment file if it exists
if [ -f /configuration/postgres.env ]; then
    source /configuration/postgres.env
fi

# Start the original entrypoint
exec docker-entrypoint.sh postgres
