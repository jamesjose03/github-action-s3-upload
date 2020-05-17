FROM python:3.8-alpine

RUN pip install --quiet awscli

COPY entrypoint.sh /entrypoint.sh
CMD chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]