FROM debian:stretch-slim

RUN apt-get update && apt-get install -qqy --no-install-recommends \
  ca-certificates \
  curl \
  jq \
  && rm -rf /var/lib/apt/lists

ADD install.sh /tmp/

RUN /tmp/install.sh && rm -Rf /tmp/*

ENTRYPOINT ["twitch"]
