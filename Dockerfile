FROM debian:stable
RUN apt update
RUN apt upgrade -y
RUN apt install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_21.x | bash -
RUN apt-get install -y nodejs
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
