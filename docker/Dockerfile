ARG IMAGE_VERSION=9

FROM squidfunk/mkdocs-material:${IMAGE_VERSION} as dev

ARG REMOTE_CONTAINER=true
ARG DOCKER_UID=1000
ARG DOCKER_GID=1000
ARG DOCKER_GROUP=developer
ARG DOCKER_USER=developer
ARG APP_DIR=/home/${DOCKER_USER}/workspace

RUN mkdir -p ${APP_DIR}

# Add developer user
RUN apk update && \
    apk upgrade && \
    apk --no-cache add bash && \
    addgroup -S ${DOCKER_GROUP} && adduser -S ${DOCKER_USER} -G ${DOCKER_GROUP}
    
COPY  . .

RUN chown -R ${DOCKER_USER} /home/${DOCKER_USER}


WORKDIR ${APP_DIR}

USER ${DOCKER_USER}

