#!/bin/bash

env_name="ansible-latest"

# shellcheck disable=SC1091
source deactivate
conda remove --yes --name ${env_name} --all
conda create --yes --name ${env_name} pyyaml pycrypto jinja2 six jmespath
# shellcheck disable=SC1091
source activate ${env_name}
pip install ansible azure==2.0.0rc5 msrest msrestazure ansible-lint
