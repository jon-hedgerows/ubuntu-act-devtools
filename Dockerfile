FROM ghcr.io/catthehacker/ubuntu:act-latest

# update and install a native build kit
RUN set -eux; \
    export DEBIAN_NONINTERACTIVE=1; \
    apt -yy update; \
    apt -yy upgrade; \
    apt install -yy --no-install-recommends \
        devscripts \
        build-essential \
        git-buildpackage \
        debhelper;

# install docker
#COPY install-scripts/install-docker.sh /tmp/install-docker.sh
#RUN bash -x /tmp/install-docker.sh; \
#    rm /tmp/install-docker.sh;
# this needs either a sufficiently privileged container to run docker-in-docker, or access to the hosts's docker environment
