FROM python:3.8-alpine

RUN pip install --quiet awscli==1.18.61

COPY entrypoint.sh /entrypoint.sh
CMD chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]