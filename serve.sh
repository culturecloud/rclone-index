#!/bin/sh

if [ '$REPL_SLUG' = '' ]; then
    RCLONE_BIN='rclone'
else
    if [ ! -f 'rclone' ]; then
        curl -sO https://beta.rclone.org/rclone-beta-latest-linux-amd64.zip \
        && unzip -q rclone-*-amd64.zip \
        && cd rclone-*-linux-amd64 \
        && cp ./rclone .. \
        && cd .. \
        && chmod +x ./rclone \
        && rm -rf rclone-*-linux-amd64 rclone-*-linux-amd64.zip
    fi
    RCLONE_BIN='./rclone'
fi

echo ""
$RCLONE_BIN -V
echo ""

$RCLONE_BIN -v serve http \
    $SERVE_REMOTE: \
    --read-only \
    --addr=:$PORT \
    --user=$AUTH_USER \
    --pass=$AUTH_PASS \
    --template="templates/index.html"
