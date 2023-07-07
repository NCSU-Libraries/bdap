FROM alpine:latest

LABEL maintainer="NCSU SCRC special_collections@ncsu.edu"

RUN apk update \
    && apk add \
    go \
    python3 \
    py3-pip \
    sleuthkit \
    tree \
    wget \
    unzip \
# Install siegfried
    && go install github.com/richardlehane/siegfried/cmd/sf@latest \
    && sf -update \
# Install hfsexplorer
    && mkdir /usr/share/hfsexplorer \
    && cd /usr/share/hfsexplorer \
    && wget https://sourceforge.net/projects/catacombae/files/HFSExplorer/0.23.1%20%28snapshot%202016-09-02%29/hfsexplorer-0.23.1-snapshot_2016-09-02-bin.zip \
    && unzip hfsexplorer-0.23.1-snapshot_2016-09-02-bin.zip \
    && rm hfsexplorer-0.23.1-snapshot_2016-09-02-bin.zip \
# Install brunnhilde
    && pip3 install brunnhilde \
# APK clean up
    && apk del \
#   && go  do we need to keep go \
    wget \
    unzip

# export PATH="$HOME/go/bin:$PATH" \ 