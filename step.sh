#!/bin/bash

# Install NVM
PROFILE=$HOME/.profile
touch $PROFILE
curl -o- https://raw.githubusercontent.com/creationix/nvm/v${nvm_version}/install.sh | PROFILE=$PROFILE bash
source $PROFILE

# Install latest node version by default
if [[ -z "$node_version" && ! -e "./.nvmrc" ]]; then node_version="node"; fi

nvm install ${node_version}

envman add --key PATH --value $PATH
