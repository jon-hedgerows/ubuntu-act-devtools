FROM ghcr.io/catthehacker/ubuntu:act-24.04

# update and install a native build kit, then clean
RUN set -eux; \
    sed -i 's/# deb-src/deb-src/g' /etc/apt/sources.list; \
    export DEBIAN_NONINTERACTIVE=1; \
    apt-get -yq update; \
    apt-get -yq upgrade; \
    apt-get -yq install ca-certificates; \
    apt-get install -yq --no-install-recommends \
    devscripts \
    build-essential \
    git-buildpackage \
    debhelper \
    equivs \
    dh-make ; \
    apt-get -yq clean;

LABEL org.opencontainers.image.base.name="ghcr.io/catthehacker/ubuntu:act-24.04"
