# Build the manager binary
FROM quay.io/operator-framework/helm-operator:v1.31.0
LABEL org.opencontainers.image.source https://github.com/hyperplane-org/timescale-operator
ENV HOME=/opt/helm
COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts  ${HOME}/helm-charts
WORKDIR ${HOME}
