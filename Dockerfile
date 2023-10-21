FROM --platform=$BUILDPLATFORM registry.access.redhat.com/ubi9/ubi:latest

ARG TARGETARCH

RUN echo $TARGETARCH

RUN curl -LO https://dl.k8s.io/release/$(curl -Ls https://dl.k8s.io/release/stable.txt)/bin/linux/${TARGETARCH}/kubectl && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl

