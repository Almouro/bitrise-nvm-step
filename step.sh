#!/bin/bash

PROFILE=$HOME/.profile
touch $PROFILE
curl -o- https://raw.githubusercontent.com/creationix/nvm/v${nvm_version}/install.sh | PROFILE=$PROFILE bash
source $PROFILE
nvm install ${node_version}

envman add --key PATH --value $PATH
