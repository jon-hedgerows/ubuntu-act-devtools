# ubuntu-jammy runner image

## image

this repo builds a runner image based on catthehacker's images, with debian build tools installed. this is big, but it's faster than installing the build tools every time.

image: `uk-cardiff-1.ocir.io/ax39baacthsg/runner-image/ubuntu-act-deb:latest`

## base

ghcr.io/catthehacker/ubuntu:act-latest

## additional packages

debian build tools

+ devscripts
+ build-essential
+ git-buildpackage
+ debhelper
