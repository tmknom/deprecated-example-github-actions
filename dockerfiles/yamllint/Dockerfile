FROM python:3.9.5-alpine3.14

WORKDIR /app
COPY requirements.txt /app

RUN set -x && \
    addgroup nonroot && \
    adduser -G nonroot -s /bin/sh -D nonroot && \
    pip install --no-cache-dir -r /app/requirements.txt

USER nonroot
WORKDIR /work

ENTRYPOINT ["/usr/local/bin/yamllint"]
CMD ["--help"]