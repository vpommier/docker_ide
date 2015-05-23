FROM opencloudlabs/ide_plugin_go:latest
MAINTAINER pommier.v@gmail.com

USER root

ENV GOLANG_VERSION 1.4.2

RUN yum install -y \
	tar \
	&& yum clean all

# Install Golang Binaries
RUN curl -sSL https://storage.googleapis.com/golang/go${GOLANG_VERSION}.linux-amd64.tar.gz \
	| tar -C /usr/local -xvz

# Golang workspace configuration
RUN mkdir -p ~/go/{src,bin,pkg}
RUN sed -i "/^export\sPATH=/a\export PATH=\"\/usr\/local\/go/bin:\$PATH\"" ~/.zshrc
ENV PATH /usr/local/go/bin:$PATH
ENV GOPATH /root/go
ENV GOBIN $GOPATH/bin

# Install GoTools
RUN vim +GoInstallBinaries +qall

WORKDIR $GOPATH
