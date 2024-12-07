FROM ghcr.io/catthehacker/ubuntu:act-24.04
ARG VERSION
ARG COMMIT
ARG HOMEPAGE

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

LABEL org.opencontainers.image.authors="Jon Davies <jon@hedgerows.org.uk>"
LABEL org.opencontainers.image.url="$HOMEPAGE"
LABEL org.opencontainers.image.documentation="$HOMEPAGE"
LABEL org.opencontainers.image.source="$HOMEPAGE"
LABEL org.opencontainers.image.version="$VERSION"
LABEL org.opencontainers.image.revision="$COMMIT"
LABEL org.opencontainers.image.vendor="Jon Davies"
LABEL org.opencontainers.image.title="$REGISTRY/$IMAGE_NAME"
LABEL org.opencontainers.image.description="A gitea runner image with debian build tools pre-installed."
LABEL org.opencontainers.image.base.name="ghcr.io/catthehacker/ubuntu:act-24.04"
