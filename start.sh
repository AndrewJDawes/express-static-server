#!/usr/bin/env bash
if [ -f "getenv.sh" ]; then
    source getenv.sh
fi

# Attach to nginx-reverse-proxy network
network_name="nginx-reverse-proxy"
network_cmd="docker network inspect $network_name || docker network create $network_name"
eval "$network_cmd"

eval_cmd="docker run \
-d \
--restart=unless-stopped \
--name $PROJECT_DOCKER_CONTAINER_NAME \
--network=$network_name \
-p 80 \
-v "$(pwd)"/data/public:/usr/src/app/public:ro \
$PROJECT_DOCKER_FULL_PATH
"
eval "$eval_cmd"