FROM vpommier/ide_base:latest
MAINTAINER pommier.v@gmail.com 

ENV TERRAFORM_VERSION 0.6.3

RUN yum install -y \
	unzip \
	&& yum clean all \
	&& curl -kL -o /tmp/terraform.zip \
	https://dl.bintray.com/mitchellh/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
	&& unzip -d /usr/local/terraform /tmp/terraform.zip \
	&& rm -rf /tmp/terraform.zip \
	&& alternatives --install /usr/bin/terraform terraform /usr/local/terraform/terraform 1
