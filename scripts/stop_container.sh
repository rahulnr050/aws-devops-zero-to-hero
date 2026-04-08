#!/bin/bash
set -e

# Get running container IDs only (no header)
containerid=$(docker ps -q)

if [ -n "$containerid" ]; then
  docker rm -f $containerid
else
  echo "No running containers to stop"
fi
