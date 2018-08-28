FROM docker:18.06.1-ce

RUN apk add --no-cache curl openssl ca-certificates nodejs yarn && \
    curl \
      -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) \
      -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
