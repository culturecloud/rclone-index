FROM rclone/rclone:beta

ENV TZ Asia/Dhaka
WORKDIR /culturecloud/

COPY . .

RUN chmod 755 /culturecloud/ \
    && chmod +x ./serve.sh

CMD [ "./serve.sh" ]