FROM alpine:latest

WORKDIR /usr/src/app

ENV XDG_CONFIG_HOME=/config

RUN apk --no-cache add curl unzip jq ca-certificates fuse tzdata && \
  echo "user_allow_other" >> /etc/fuse.conf

COPY . .

RUN curl -O https://beta.rclone.org/rclone-beta-latest-linux-amd64.zip \
    && unzip rclone-beta-latest-linux-amd64.zip \
    && cd rclone-*-linux-amd64 \
    && cp ./rclone /usr/local/bin/ \
    && cd .. \
    && rm -rf rclone-*-linux-amd64 rclone-beta-latest-linux-amd64.zip

RUN addgroup -g 1009 rclone && adduser -u 1009 -Ds /bin/sh -G rclone rclone

EXPOSE $PORT:$PORT

ENTRYPOINT [ "/bin/sh", "serve.sh" ]