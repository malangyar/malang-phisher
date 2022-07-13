FROM debian:latest
LABEL MAINTAINER="https://github.com/malangyar/mapangphisher"

WORKDIR /malangphisher/
ADD . /malangphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./malangphisher.sh"]
