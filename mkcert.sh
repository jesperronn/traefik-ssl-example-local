#!/usr/bin/env bash

set -e

pushd "$(dirname "$0")" > /dev/null || exit 1

mkcert -install

mkcert \
  -cert-file certs/local.crt \
  -key-file certs/local.key \
  "docker.localhost" "*.docker.localhost" "localhost" "*.localhost"