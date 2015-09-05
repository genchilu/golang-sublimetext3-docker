FROM genchilu/sublimetext3

RUN apt-get update
RUN apt-get install -y build-essential git wget curl

# env vars

ENV GOPATH /goprojects
ENV PATH $PATH:/goprojects/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# go 1.5
RUN wget -qO- https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz | tar -C /usr/local -xzf -

# GOPATH
RUN mkdir -p /goprojects
RUN mkdir -p /goprojects/bin
RUN mkdir -p /goprojects/pkg
RUN mkdir -p /goprojects/src
RUN mkdir -p /goprojects/src/github.com
RUN mkdir -p /goprojects/src/github.com/genchilu

RUN go get -u github.com/nsf/gocode
RUN go install github.com/nsf/gocode

# add gosublime plugin
COPY ./sublime-text-3/ /root/.config/sublime-text-3/
