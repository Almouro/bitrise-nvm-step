#!/bin/bash

touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/${nvm_version}/install.sh | bash
source ~/.bash_profile
nvm install ${node_version}
