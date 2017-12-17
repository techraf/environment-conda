#!/bin/bash

# on Debian requires dev tools (specifically to compile pycrypto)
#   see ansible-unix-ansible

env_name="devops"

# shellcheck disable=SC1091
source deactivate
conda remove --yes --name ${env_name} --all
conda create --yes --name ${env_name}
# shellcheck disable=SC1091
source activate ${env_name}

source ./include-install-ansible-and-dependencies.sh
