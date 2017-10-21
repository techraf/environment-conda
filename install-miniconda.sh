#!/bin/bash

# Interactive install
#   http://conda.pydata.org/docs/install/quick.html#os-x-miniconda-install
wget https://repo.continuum.io/miniconda/Miniconda2-latest-MacOSX-x86_64.sh
bash Miniconda2-latest-MacOSX-x86_64.sh

# Silent install
#   http://conda.pydata.org/docs/help/silent.html#linux-and-os-x

# -------- after install

conda install conda-build  # required for --use-local (in `conda install`)

conda install argcomplete


# TODO the following must be run after the following line in .bash_profile:
#
#  # added by Miniconda2 4.2.12 installer
#  export PATH="/Users/macraf/miniconda2/bin:$PATH"

cat >~/.bash_profile.d/conda_autocomplete <<EOF
eval "\$(register-python-argcomplete conda)"
EOF
