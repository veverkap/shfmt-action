FROM  peterdavehello/shfmt:latest
LABEL maintainer="Patrick Veverka <docker@veverka.net>"
LABEL "com.github.actions.name"="shfmt"
LABEL "com.github.actions.description"="Runs shfmt against code"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="red"

RUN	apk add --no-cache \
  bash \
  ca-certificates \
  curl \
  jq

COPY shfmt.sh /usr/bin/shfmt

ENTRYPOINT ["shfmt"]
