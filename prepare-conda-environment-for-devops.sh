#!/bin/bash

# on Debian requires dev tools (specifically to compile pycrypto)
#   see ansible-unix-ansible

env_name="devops"

# shellcheck disable=SC1091
source deactivate
conda remove --yes --name ${env_name} --all
conda create --yes --name ${env_name} python=2.7.14
# shellcheck disable=SC1091
source activate ${env_name}

source ./include-install-ansible-and-dependencies.sh

#conda install --yes -c ruby-lang ruby=2.5.0
conda install --yes -c anaconda ruby
gem install inspec
#gem install serverspec
