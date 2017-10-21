#!/bin/bash

conda install -y conda-build

# it was required to put the following into `build.sh`:
#   $PYTHON setup.py install --single-version-externally-managed --record=/tmp/record.txt
# idea from:
#   https://github.com/conda/conda/issues/508#issuecomment-199675658

conda build ansible

conda create --name newans02
# shellcheck disable=SC1091
source activate newans03
conda install jinja2 pyyaml
conda install --use-local ansible
