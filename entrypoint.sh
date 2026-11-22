#!/bin/sh
set -e
PORT="${PORT:-8080}"
WS_PATH="${WS_PATH:-/xray}"
if [ -z "$UUID" ]; then echo "UUID env var is required" >&2; exit 1; fi
sed -e "s/__PORT__/${PORT}/g" -e "s/__UUID__/${UUID}/g" -e "s|__WS_PATH__|${WS_PATH}|g" /etc/xray/config.json.template > /etc/xray/config.json
exec /usr/local/bin/xray run -c /etc/xray/config.json
