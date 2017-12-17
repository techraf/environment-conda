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

conda install --yes pyyaml pycrypto six jmespath
# Install Jinja2 from PyPI as conda installs older version
pip install jinja2
pip install ansible
pip install ansible-lint
# for `password_hash` filter:
pip install passlib
# for Ansible Tower:
#pip install ansible-tower-cli==3.1.7
pip install ansible-tower-cli
# for Amazon AWS:
pip install boto
# for Azure:
pip install azure==2.0.0rc5 msrest msrestazure enum packaging
# for DigitalOcean:
pip install dopy
# for Windows:
pip install pywinrm
# for VMware:
pip install pyvmomi
# for Proxmox:
pip install proxmoxer
# other:
pip install molecule python-vagrant

#conda install --yes -c ruby-lang ruby=2.2.3
#gem install inspec
#gem install serverspec

## shellcheck disable=SC2016
# echo 'source "${CONDA_PREFIX}/etc/bash_completion.d/molecule.bash-completion.sh"' >> "${CONDA_PREFIX}/bin/activate"
# the above did not work with Molecule 2.0.4
#   but it should not add the line indiscriminately - as was, it created multiple entries
