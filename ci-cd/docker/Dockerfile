
ARG PYTHON_IMAGE_VERSION="3.10.4-slim-bullseye"

FROM python:${PYTHON_IMAGE_VERSION} as dev

ARG MKDOCS_VERSION="9.0.5"
ARG DOCKER_UID=1000
ARG DOCKER_GID=1000
ARG DOCKER_GROUP=developer
ARG DOCKER_USER=developer
ARG APP_DIR=/home/${DOCKER_USER}/workspace
ARG LOCAL_DIR=/home/${DOCKER_USER}/.local
ARG REMOTE_CONTAINER=true

ENV PATH="${PATH}:${LOCAL_DIR}/bin"

RUN mkdir -p ${APP_DIR} ${LOCAL_DIR}

COPY ./ci-cd /ci-cd

# Install system dependencies
RUN --mount=type=cache,target=/var/cache/apt /ci-cd/docker/scripts/install-system-deps.sh

# Add user for python
RUN groupadd ${DOCKER_GROUP} -g ${DOCKER_GID} && useradd -m ${DOCKER_USER} -G sudo -g ${DOCKER_GID} -u ${DOCKER_UID}

RUN chown -R ${DOCKER_USER} /home/${DOCKER_USER} ${LOCAL_DIR}

RUN /ci-cd/docker/scripts/install-plugins.sh

RUN /ci-cd/docker/scripts/remote-container.sh

WORKDIR ${APP_DIR}

USER ${DOCKER_USER}

COPY  . .
