FROM alpine:latest
RUN apk add bash && \
    mkdir -p /dist/scripts
COPY scripts/entrypoint.sh /dist/scripts/entrypoint.sh
RUN chmod 755 /dist/scripts/entrypoint.sh

ENTRYPOINT /dist/scripts/entrypoint.sh

