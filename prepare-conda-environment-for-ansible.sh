#!/bin/bash

# regarding ShellCheck (https://github.com/koalaman/shellcheck/wiki/Directive)
# Directives instead of or immediately after the shebang apply to the entire script.
# Otherwise, they are scoped to the structure that follows it (such as all branches of a case statement, or an entire function).

env_name="ansible2.2.0.0"

conda create --yes --name ${env_name} pyyaml pycrypto jinja2 six jmespath
# shellcheck disable=SC1091
source activate ${env_name}
conda install --yes --quiet ansible==2.2.0.0
pip install azure==2.0.0rc5 msrest msrestazure ansible-lint



# the following relies on already-prepared local package and gives the result:
#   Solving package specifications: ..........
#   Warning: 2 possible package resolutions (only showing differing packages):
#     - local::ansible-2.2.1.0_0.2.rc2-py27_0.tar.bz2
#     - local::ansible-2.2.1.0_0.2.rc2-0.tar.bz2
#   
#   Package plan for installation in environment /Users/macraf/miniconda2/envs/ansible-api:
#   
#   The following NEW packages will be INSTALLED:
#   
#       ansible: 2.2.1.0_0.2.rc2-py27_0 local

env_name="ansible2.2.1.0-rc2"

conda create --yes --name ${env_name} pyyaml pycrypto jinja2 six jmespath
# shellcheck disable=SC1091
source activate ${env_name}
conda install --yes --quiet --use-local ansible
pip install azure==2.0.0rc5 msrest msrestazure ansible-lint
