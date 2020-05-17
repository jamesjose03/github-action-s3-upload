FROM alpine:3.10

COPY entrypoint.sh /entrypoint.sh
CMD chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]