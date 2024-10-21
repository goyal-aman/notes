FROM debian:latest

RUN apt-get update && \
    apt-get install -y httrack && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
VOLUME /app
ENTRYPOINT ["httrack", "-v"]

