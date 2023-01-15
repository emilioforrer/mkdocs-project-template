#!/bin/bash

if [ "${REMOTE_CONTAINER}" == "true" ]
then
    echo "Initializing remote container configuration"

    # Make current user able to use sudo for development purposes
    apt-get install -y sudo \
        && echo $DOCKER_USER ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$DOCKER_USER \
        && chmod 0440 /etc/sudoers.d/$DOCKER_USER

    # Fix permission denied while trying to connect to the Docker daemon socket
    groupadd docker
    usermod -a -G docker ${DOCKER_USER}

    # Avoid vscode extensions reinstalls
    # https://code.visualstudio.com/remote/advancedcontainers/avoid-extension-reinstalls
    mkdir /home/${DOCKER_USER}/.vscode-server/extensions /home/${DOCKER_USER}/.vscode-server/extensions
    chown -R ${DOCKER_USER} /home/${DOCKER_USER}/.vscode-server/extensions /home/${DOCKER_USER}/.vscode-server/extensions
    
    # Persist bash history
    SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" \
        && mkdir /commandhistory \
        && touch /commandhistory/.bash_history \
        && chown -R $DOCKER_USER /commandhistory \
        && echo "$SNIPPET" >> "/home/$DOCKER_USER/.bashrc"
fi