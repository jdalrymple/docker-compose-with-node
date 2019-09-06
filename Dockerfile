FROM docker:18.06.1-ce

# You cannot follow docker's offcial guideline to install docker compose. It
# is not compatibility with alpine. Please following alpine's guideline
# (https://wiki.alpinelinux.org/wiki/Docker#Docker_Compose) to install it.
RUN apk add --no-cache curl git openssl ca-certificates 'nodejs<11' yarn py-pip gettext && \
    pip install 'docker-compose==1.23.1'
