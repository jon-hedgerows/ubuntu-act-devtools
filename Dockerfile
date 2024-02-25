FROM ghcr.io/catthehacker/ubuntu:act-latest

# update and install a native build kit, then clean
RUN set -eux; \
    sed -i 's/# deb-src/deb-src/g' /etc/apt/sources.list; \
    export DEBIAN_NONINTERACTIVE=1; \
    apt -yy update; \
    apt -yy upgrade; \
    apt install -yy --no-install-recommends \
        devscripts \
        build-essential \
        git-buildpackage \
        debhelper \
        equivs ; \
    apt -yy clean;
