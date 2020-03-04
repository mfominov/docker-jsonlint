FROM node:12-alpine

ARG JSONLINT_VERSION="latest"
ENV npm_config_loglevel=silent

LABEL name="docker-jsonlint"
LABEL maintainer="Peter Dave Hello <hsu@peterdavehello.org>"

LABEL version="$JSONLINT_VERSION"

WORKDIR /json

RUN npm install -g @prantlf/jsonlint@"$JSONLINT_VERSION" && \
	rm -rf ~/.npm && \
	jsonlint --help

USER node
