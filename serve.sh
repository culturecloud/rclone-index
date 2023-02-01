#!/bin/sh

echo ""
rclone -V
echo ""

rclone -v serve http \
    $SERVE_REMOTE: \
    --read-only \
    --addr=:$PORT \
    --user=$AUTH_USER \
    --pass=$AUTH_PASS \
    --template="templates/index.html"
