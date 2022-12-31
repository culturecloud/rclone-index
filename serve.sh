#!/bin/bash

if [ -f "/usr/local/bin/rclone" ]
then
    RCLONE_BIN="rclone"
else
    RCLONE_BIN="./rclone"
fi

echo ""
$RCLONE_BIN -V
echo ""

$RCLONE_BIN serve webdav -v $SERVE_REMOTE: \
    --addr=:$PORT \
    --user=$AUTH_USER \
    --pass=$AUTH_PASS \
    --template="templates/index.html" \
    --vfs-cache-mode="writes" \
    --poll-interval=0