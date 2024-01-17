#!/bin/bash

# Define the GitHub repository address
REPO_URL="git@github.com:JiaenLiu/ci-cd-with-github-actions.git"

# Define the directory to clone the repository
CLONE_DIR="ci-cd-repo-deploy"

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

# Launch the app (assuming there's a script or command to launch the app)
# Deployment-related tasks can go here
nohup python app.py &

# Exiting the script
exit 0
