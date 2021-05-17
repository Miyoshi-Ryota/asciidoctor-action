# asciidoctor image
FROM asciidoctor/docker-asciidoctor

LABEL "version"="1.2"

RUN apk add font-noto-cjk
RUN gem install asciidoctor-kroki

# Setup entrypoint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

