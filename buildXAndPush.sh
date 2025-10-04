#!/bin/bash


VERSION="0.0.0"
REGISTRY_URI="dottgonzo/fakeh264fluxserver"

echo building $REGISTRY_URI with version: \"master\" and \"$VERSION\"

docker buildx build --platform linux/amd64,linux/arm64 -t $REGISTRY_URI:master -t $REGISTRY_URI:$VERSION --push .
