# syntax=docker/dockerfile:1.7
#
# PCOM-DI-Jupyterhub-Ubuntu
# Pinned upstream image (jupyterhub/jupyterhub:5.3.0) republished under the NNP namespace.

FROM jupyterhub/jupyterhub:5.3.0

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION="5.3.0-v1"

LABEL org.opencontainers.image.title="pcom-di-jupyterhub-ubuntu" \
      org.opencontainers.image.description="JupyterHub 5.3.0 for NNP Data Ingestion." \
      org.opencontainers.image.vendor="Nubo Native Platform" \
      org.opencontainers.image.source="https://github.com/NNP-Platform-Components-PCOM/PCOM-DI-Jupyterhub-Ubuntu" \
      org.opencontainers.image.url="https://github.com/NNP-Platform-Components-PCOM/PCOM-DI-Jupyterhub-Ubuntu" \
      org.opencontainers.image.version="${VERSION}" \
      org.opencontainers.image.revision="${VCS_REF}" \
      org.opencontainers.image.created="${BUILD_DATE}"

COPY requirements.txt /tmp/requirements.txt
