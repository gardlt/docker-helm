FROM alpine:3.4

ENV HELM_VERSION="2.1.2"

RUN apk --no-cache add ca-certificates

ADD https://storage.googleapis.com/kubernetes-helm/helm-v${HELM_VERSION}-linux-amd64.tar.gz /tmp/helm.tar.gz

RUN cd /tmp \
		&& tar -zxvf helm.tar.gz \
		&& ls \
		&& mv linux-amd64/helm /usr/local/bin/helm \
		&& rm -rf linux* helm.tar.gz

