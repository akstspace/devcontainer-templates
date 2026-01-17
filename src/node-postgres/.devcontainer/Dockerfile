ARG VARIANT=22
FROM node:${VARIANT}-bookworm

RUN apt-get update && apt-get install -y postgresql-client \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

USER node
