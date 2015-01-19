FROM opencloudlabs/ide_plugin_go:0.1
MAINTAINER pommier.v@gmail.com 

USER root

ENV GOLANG_VERSION 1.3.3

RUN yum install -y \
	golang-$GOLANG_VERSION* \
	&& yum clean all

# Golang workspace configuration
RUN mkdir -p ~/go/{src,bin,pkg}
ENV GOPATH /root/go
ENV PATH $GOPATH/bin:$PATH

RUN vim +GoInstallBinaries +qall

WORKDIR $GOPATH
