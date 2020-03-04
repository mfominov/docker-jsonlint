FROM node:12-alpine

ENV npm_config_loglevel=silent

LABEL name="docker-jsonlint"
LABEL maintainer="Peter Dave Hello <hsu@peterdavehello.org>"

WORKDIR /json

RUN npm install -g @prantlf/jsonlint && \
	rm -rf ~/.npm && \
	jsonlint --help

USER node
