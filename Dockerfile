FROM ghcr.io/catthehacker/ubuntu:act-24.04

# update and install a native build kit, then clean
RUN set -eux; \
    sed -i 's/# deb-src/deb-src/g' /etc/apt/sources.list; \
    export DEBIAN_NONINTERACTIVE=1; \
    apt -yqq update; \
    apt -yqq upgrade; \
    apt -yqq install ca-certificates; \
    apt install -yqq --no-install-recommends \
        devscripts \
        build-essential \
        git-buildpackage \
        debhelper \
        equivs \
        dh-make ; \
    apt -yqq clean;

LABEL org.opencontainers.image.base.name="ghcr.io/catthehacker/ubuntu:act-24.04"
