#!/bin/bash

echo ""
./rclone -V
echo ""

./rclone serve http $SINGLE_SERVE_REMOTE: \
    --read-only \
    --addr=:8080 \
    --user=$AUTH_USER \
    --pass=$AUTH_PASS \
    --template="templates/index.html"
