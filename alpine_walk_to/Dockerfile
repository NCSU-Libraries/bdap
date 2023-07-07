FROM alpine

RUN apk update \
    && apk add \
    git \
    python3 \
    py3-pip \
# Install walk_to_dfmlx
    && mkdir /home/repos \
    && cd /home/repos \
    && git clone https://github.com/dfxml-working-group/dfxml_python.git \
    && cd dfxml_python \
    && pip3 install .