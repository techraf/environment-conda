#!/bin/bash

# regarding ShellCheck (https://github.com/koalaman/shellcheck/wiki/Directive)
# Directives instead of or immediately after the shebang apply to the entire script.
# Otherwise, they are scoped to the structure that follows it (such as all branches of a case statement, or an entire function).

conda create --name ruby-inspec
# The following failed
#   conda create --name ruby-inspec ruby=2.2.3
# shellcheck disable=SC1091
source activate ruby-inspec
conda install -c ruby-lang ruby=2.2.3

echo source activate ruby-inspec
