#!/bin/sh -eu

cd "$(dirname "$0")"

jekyll serve --incremental \
  --ssl-cert localhost-cert.pem \
  --ssl-key  localhost-private.pem \
  --port 3232 \
  --open-url \
  "$@"
