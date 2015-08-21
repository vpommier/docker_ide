FROM vpommier/ide_base:latest
MAINTAINER pommier.v@gmail.com 

RUN yum install -y \
	python-pip \
	groff \
	&& yum clean all \
	&& pip install awscli
