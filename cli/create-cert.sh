#!/bin/bash

set -e

source "../.env"

mkcert -install "${APP_DOMAIN}"

mkdir -p ../nginx/certs

find . -type f -name "*.pem" -exec mv {} ../nginx/certs \;
