# ubuntu-noble runner image

## image

this repo builds a runner image based on catthehacker's images, with debian build tools installed. this is big, but it's faster than installing the build tools every time.

image: `ghcr.io/jon-hedgerows/runner-image/ubuntu-act-deb:latest`

## base image

We start with this image, and add debian build tools to it.

`ghcr.io/catthehacker/ubuntu:act-24.04`

## additional packages

debian build tools

+ devscripts
+ build-essential
+ git-buildpackage
+ debhelper
