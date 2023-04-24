#!/usr/bin/env bash

pushd "$(dirname "$0")" > /dev/null || exit 1

mkcert \
  -cert-file certs/local.crt \
  -key-file certs/local.key \
  "docker.localhost" "*.docker.localhost" "domain.local" "*.domain.local"