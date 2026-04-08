#!/bin/bash
set -e

echo "Stopping containers..."

DOCKER=/usr/bin/docker

containerid=$($DOCKER ps -q)

if [ -n "$containerid" ]; then
  $DOCKER rm -f $containerid
else
  echo "No running containers to stop"
fi