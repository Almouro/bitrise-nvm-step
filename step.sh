#!/bin/bash

# Install NVM
PROFILE=$HOME/.profile
touch $PROFILE
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v${nvm_version}/install.sh | PROFILE=$PROFILE bash
source $PROFILE

if [ ! -z "${working_dir}" ] ; then
  echo "Switching to working directory: ${working_dir}"

  cd "${working_dir}"
  if [ $? -ne 0 ] ; then
    echo "Failed to switch to working directory: ${working_dir}"
  fi
fi

# Install latest node version by default
if [[ -z "$node_version" && ! -e "./.nvmrc" ]]; then node_version="node"; fi

nvm install ${node_version}

envman add --key PATH --value $PATH
