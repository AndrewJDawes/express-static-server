#!/usr/bin/env bash
if [ -f "getenv.sh" ]; then
    source getenv.sh
fi
eval_cmd="docker rm $PROJECT_DOCKER_CONTAINER_NAME"
eval "$eval_cmd"