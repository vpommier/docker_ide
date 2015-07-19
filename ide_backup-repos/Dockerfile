FROM opencloudlabs/ide_lang_go:1.4.2

RUN yum install -y \
	time \
	cmake \
	make \
	gcc \
	openssl-devel \
	zlib-devel \
	libssh2-devel \
	http-parser-devel \
	&& yum clean all

RUN curl -sSL https://github.com/libgit2/libgit2/archive/v0.22.2.tar.gz | tar -C /tmp -xvz \
	&& cd /tmp/libgit2-0.22.2 \
	&& mkdir build && cd build \
	&& cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DLIB_INSTALL_DIR=/usr/lib64 \
	&& cmake --build . --target install \
	&& rm -rf /tmp/libgit2-0.22.2

RUN go get "github.com/vpommier/dummy"
