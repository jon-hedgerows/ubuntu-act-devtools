FROM ghcr.io/catthehacker/ubuntu:act-latest

# update and install a native build kit, then clean
RUN set -eux; \
    export DEBIAN_NONINTERACTIVE=1; \
    apt -yy update; \
    apt -yy upgrade; \
    apt install -yy --no-install-recommends \
        devscripts \
        build-essential \
        git-buildpackage \
        debhelper; \
    apt -yy clean;
