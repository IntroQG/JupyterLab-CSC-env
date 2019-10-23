#!/bin/bash

# git reflog requires a name and email if user is not in passwd
# even if you're only cloning
export GIT_COMMITTER_NAME=anonymous
export GIT_COMMITTER_EMAIL=anon@localhost

# Change to working dir
cd /home/jovyan/work

# Check for existince of introqg directory, make if missing
QG_DIR="/home/jovyan/work/introqg"
if [ ! -d "$QG_DIR" ]; then
    mkdir $QG_DIR
fi
cd $QG_DIR

# Create exercises directory if it doesn't exist
EXERCISE_DIR="$QG_DIR/exercises"
if [ ! -d "$EXERCISE_DIR" ]; then
    mkdir $EXERCISE_DIR
fi

# Grab notebooks repository
NOTEBOOK_DIR="$QG_DIR/notebooks"
if [ -d "$NOTEBOOK_DIR" ]; then
    # Change directories and pull
    cd "$NOTEBOOK_DIR"
    git pull origin master
else
    # Clone the notebooks directory
    git clone https://github.com/introqg/notebooks.git
fi
