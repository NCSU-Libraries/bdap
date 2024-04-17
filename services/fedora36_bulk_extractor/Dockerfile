FROM docker.io/amd64/fedora:36

LABEL maintainer="NCSU SCRC special_collections@ncsu.edu"

RUN dnf update -y \
    && dnf install -y \
    git \
    sudo \
# Install bulk_extractor
    && mkdir /home/repos \
    && cd /home/repos \
    && git clone --recursive https://github.com/simsong/bulk_extractor.git \
    && cd bulk_extractor \
    && bash etc/CONFIGURE_FEDORA36.bash \
    && ./bootstrap.sh \
    && ./configure \
    && make \
    && make install \
# APK clean up
    && dnf erase -y \
    git \
    && rm -r /home/repos