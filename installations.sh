#!/bin/bash

# Change working directory
cd /home/jovyan/work

# Install stuff needed for interactive Matplotlib widget
#conda install -c conda-forge ipympl
#conda install -c conda-forge nodejs
#jupyter labextension install @jupyter-widgets/jupyterlab-manager
#jupyter labextension install jupyter-matplotlib

# git reflog requires a name and email if user is not in passwd
# even if you're only cloning
export GIT_COMMITTER_NAME=anonymous
export GIT_COMMITTER_EMAIL=anon@localhost

# Clone teaching notebooks
git clone https://github.com/introqg/notebooks.git

# Go to notebooks folder
cd /home/jovyan/work/notebooks/notebooks
