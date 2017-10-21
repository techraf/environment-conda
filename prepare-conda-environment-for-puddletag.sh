#!/bin/bash

# also refer to ansible-osx-tools-audio
#   puddletag itself is installed separately in:
#     /usr/local/src/puddletag/source/puddletag

env_name="puddletag"

# shellcheck disable=SC1091
source deactivate
conda remove --yes --name ${env_name} --all
conda create --yes --name ${env_name} python=2.7 pyqt=4.11.4
# shellcheck disable=SC1091
source activate ${env_name}

pip install mutagen configobj pyparsing
