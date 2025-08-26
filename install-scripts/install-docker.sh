#!/bin/bash

export DEBIAN_NONINTERACTIVE=1

# adapted from https://docs.docker.com/engine/install/ubuntu/

# upgrade
apt -yqq update
apt -yqq upgrade

# Add Docker's official GPG key:
apt -yqq install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" > /etc/apt/sources.list.d/docker.list
apt -yqq update

apt -yqq install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
