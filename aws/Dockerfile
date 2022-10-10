FROM node:16.13.1-slim AS bw-builder
WORKDIR /w
RUN apt-get update && apt-get install -y git
RUN bash -c 'git clone --single-branch --branch master --depth 100 https://github.com/bitwarden/clients.git && git checkout 1abfa63e3aa5f877f22dfab5581383d7dd507845'
RUN ls -a

# FROM amazon/aws-cli

# WORKDIR /app

# ADD https://vault.bitwarden.com/download/?app=cli&platform=linux /app
# RUN pwd
# RUN ls -a
