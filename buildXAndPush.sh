#!/bin/bash


VERSION="0.0.0"
REGISTRY_URI="dottgonzo/fakeh264fluxserver"

echo building $REGISTRY_URI with version: \"master\" and \"$VERSION\"

# docker buildx build --add-host gitea.harlock.network:192.168.60.170 --platform linux/amd64 -t $REGISTRY_URI:master -t $REGISTRY_URI:$VERSION --push .


# docker buildx build --add-host gitea.harlock.network:192.168.60.170 --platform linux/amd64 -t $REGISTRY_URI:master -t $REGISTRY_URI:$VERSION --push .
docker buildx build --platform linux/amd64,linux/arm64 -t $REGISTRY_URI:master -t $REGISTRY_URI:$VERSION --push .