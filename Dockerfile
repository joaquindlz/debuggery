FROM alpine:3.14

LABEL maintainer="Joaquín de la Zerda"

RUN set -ex \
    && echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    apache2-utils \
    bash \
    bind‑tools \
    busybox-extras \
    curl \
    git \
    hping3 \
    kubectl \
    kubectl-zsh-completion \
    nmap \
    postgresql-client \
    telnet \
    tcptraceroute \
    vim \
    zsh 

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

CMD ["zsh"]
