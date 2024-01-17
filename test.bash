#!/bin/bash

# Define the GitHub repository address
REPO_URL="git@github.com:JiaenLiu/ci-cd-with-github-actions.git"

# Define the directory to clone the repository
CLONE_DIR="ci-cd-repo-tmp"

# Create a temporary folder to store the repository
mkdir -p $CLONE_DIR

# Clone the repository
git clone $REPO_URL $CLONE_DIR

# Change to the repository directory
cd $CLONE_DIR

# create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install requirements
pip install -r requirements.txt

# Run tests (assuming there's a script or command to run tests)
# Replace 'run-tests-command' with the actual command to run tests

# run the test

python unit_test.py

# deactivate the virtual environment
deactivate

# Cleaning up: delete the tmp folder
cd ..
rm -rf $CLONE_DIR

# Exiting the script
exit 0
