FROM golang:alpine
LABEL maintainer="Patrick Veverka <docker@veverka.net>"
LABEL "com.github.actions.name"="shfmt"
LABEL "com.github.actions.description"="Runs shfmt against code"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="red"

# ENV SHFMT_VERSION 2.6.3

# RUN apk add --no-cache git \
#   && go get -u mvdan.cc/sh/cmd/shfmt \
#   && git -C "$GOPATH/src/mvdan.cc/sh" checkout -q "v$SHFMT_VERSION" \
#   && go install -a -ldflags '-extldflags "-static"' mvdan.cc/sh/cmd/shfmt

# RUN apk add --no-cache \
#   bash \
#   ca-certificates \
#   curl \
#   jq

# ADD shfmt.sh /shfmt.sh
# ENTRYPOINT ["/shfmt.sh"]

LABEL "repository"="http://github.com/veverkap/shfmt-action"
LABEL "homepage"="http://github.com/veverkap/shfmt-action"

ADD shfmt.sh /shfmt.sh
ENTRYPOINT ["/shfmt.sh"]
