FROM opencloudlabs/ide_plugin_go:latest
MAINTAINER pommier.v@gmail.com 

USER root

ENV GOAPPENGINE_VERSION 1.9.23

# Dependencies installation
RUN yum install -y \
	unzip \
	&& yum clean all

# Go AppEngine SDK installation
RUN curl -o /tmp/goappengine.zip \
	https://storage.googleapis.com/appengine-sdks/featured/go_appengine_sdk_linux_amd64-${GOAPPENGINE_VERSION}.zip \
	&& unzip -d /usr/local /tmp/goappengine.zip \
	&& rm -rf /tmp/goappengine.zip	

# Go Appengine workspace configuration
RUN alternatives --install /usr/bin/goapp goapp /usr/local/go_appengine/goapp 1 \
	&& alternatives --install /usr/bin/gofmt gofmt /usr/local/go_appengine/gofmt 1 \
	&& alternatives --install /usr/bin/godoc godoc /usr/local/go_appengine/godoc 1
ENV GOPATH /usr/local/go_appengine/gopath
ENV GOBIN $GOPATH/bin

# Patch Vim-Go plugin
RUN sed -i -e '/system("/s/\(go\)\s\+/\1app /' \
	-e "/if \!executable('go')/s/\(go\)'/\1app'/" \
	-e "/let cmd = \"go/s/\(go\)/\1app/" ~/.vim/bundle/vim-go/plugin/go.vim

# Vim-Go tools installation 
RUN vim +GoInstallBinaries +qall \
	&& $GOBIN/gocode set lib-path /usr/local/go_appengine/goroot/pkg/linux_amd64_appengine/

EXPOSE 8080 8000
WORKDIR $GOPATH
