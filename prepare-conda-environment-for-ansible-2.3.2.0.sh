#!/bin/bash

# regarding ShellCheck (https://github.com/koalaman/shellcheck/wiki/Directive)
# Directives instead of or immediately after the shebang apply to the entire script.
# Otherwise, they are scoped to the structure that follows it (such as all branches of a case statement, or an entire function).

env_name="ansible-2.3.2.0"

conda create --yes --name ${env_name} pyyaml pycrypto jinja2 six jmespath
# shellcheck disable=SC1091
source activate ${env_name}
pip install ansible==2.3.2.0
pip install azure==2.0.0rc5 msrest msrestazure ansible-lint
