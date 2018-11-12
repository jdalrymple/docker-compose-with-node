FROM docker:18.06.1-ce

# You cannot follow docker's offcial guideline to install docker compose. It
# is not compatibility with alpine. Please following alpine's guideline
# (https://wiki.alpinelinux.org/wiki/Docker#Docker_Compose) to install it.
RUN apk add --no-cache curl openssl ca-certificates 'nodejs<10.13.0' yarn py-pip && \
    pip install 'docker-compose==1.23.1'
