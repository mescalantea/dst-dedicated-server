#!/bin/bash
# Build the Docker image

# Colors for the output
RED=$(tput setaf 1)
YELLOW=$(tput setaf 3)
NC=$(tput sgr0) # No color

DOCKERFILE="Dockerfile"
BUILDER_NAME="docker-builder"
BASEDIR="$(dirname $(realpath $0))"

# Build the Docker image
echo "Building Docker image for DST Dedicated Server..."

HOST_PLATFORM=$($BASEDIR/docker-host-platform.sh)
build_args="--platform $HOST_PLATFORM --load --tag mescalantea/dst-dedicated-server:0.3.1 -f $BASEDIR/$DOCKERFILE $BASEDIR"

EXISTING_BUILDER=$(docker buildx ls --format '{{.Name}}' | grep -w "$BUILDER_NAME")

export DOCKER_BUILDKIT=1
if [ -z "$EXISTING_BUILDER" ]; then
  docker buildx create --name "$BUILDER_NAME" --use || (echo "${RED}Builder creation failed${NC}" && exit 1)
  docker buildx inspect "$BUILDER_NAME" --bootstrap || (echo "${RED}Builder bootstrap failed${NC}" && exit 1)
else
  # Check if the builder is already in use
  ACTIVE_BUILDER=$(docker buildx ls | grep -w "$BUILDER_NAME" | awk '/\*/ {print $1}')

  if [ "$ACTIVE_BUILDER" != "*" ]; then
    # Use the builder if it's not the active one
    docker buildx use "$BUILDER_NAME" || (echo "${RED}Builder use failed${NC}" && exit 1)
  fi
fi

docker buildx build $build_args