FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

RUN apt-get update && \
    apt-get install -y \
    curl \
    tzdata \
    openssh-server \
    ca-certificates \
    perl \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash && \
    apt-get install -y gitlab-ce

RUN gitlab-ctl reconfigure

EXPOSE 80

ENTRYPOINT tail -f /dev/null