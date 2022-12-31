#!/bin/bash

if [ -f ./rclone ]
then
    mv ./rclone ./rclone.bak
fi

curl -O https://beta.rclone.org/rclone-beta-latest-linux-amd64.zip \
    && unzip rclone-beta-latest-linux-amd64.zip \
    && cd rclone-*-linux-amd64 \
    && cp ./rclone .. \
    && cd .. \
    && chmod +x ./rclone \
    && rm -rf rclone-*-linux-amd64 rclone-beta-latest-linux-amd64.zip
