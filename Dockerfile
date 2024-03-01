FROM ghcr.io/catthehacker/ubuntu:act-latest
ARG VERSION
ARG COMMIT
ARG HOMEPAGE

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
        equivs \
        dh-make ; \
    apt -yy clean;

LABEL org.opencontainers.image.authors="Jon Davies <jon@hedgerows.org.uk>"
LABEL org.opencontainers.image.url="$HOMEPAGE"
LABEL org.opencontainers.image.documentation="$HOMEPAGE"
LABEL org.opencontainers.image.source="$HOMEPAGE"
LABEL org.opencontainers.image.version="$VERSION"
LABEL org.opencontainers.image.revision="$COMMIT"
LABEL org.opencontainers.image.vendor="Jon Davies"
LABEL org.opencontainers.image.title="uk-cardiff-1.ocir.io/ax39baacthsg/runner-image/ubuntu-act-deb"
LABEL org.opencontainers.image.description="A gitea runner image with debian build tools pre-installed."
LABEL org.opencontainers.image.base.name="ghcr.io/catthehacker/ubuntu:act-latest"
