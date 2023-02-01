FROM rclone/rclone:beta

ENV TZ Asia/Dhaka
WORKDIR /culturecloud/

COPY . .

RUN chmod 755 /culturecloud/

ENTRYPOINT [ "/bin/sh" ]
CMD [ "./serve.sh" ]