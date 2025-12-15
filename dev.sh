#!/usr/bin/env bash
set -euo pipefail

pkill hugo || true

hugo server -D \
  --bind 0.0.0.0 \
  --baseURL "https://${CODESPACE_NAME}-1313.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}/" \
  --appendPort=false \
  --disableFastRender --ignoreCache --noHTTPCache --poll 700ms
