#!/bin/sh

cd "$(dirname "$0")" || exit 1

jekyll serve --incremental \
  --ssl-key  localhost-private.pem \
  --ssl-cert localhost.crt \
  --port 3232 \
  --open-url \
  "$@"
