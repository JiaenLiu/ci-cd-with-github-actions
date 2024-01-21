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

# # Install virtualenv
# pip install virtualenv

# # create a virtual environment
# python3 -m venv venv

# # Activate the virtual environment
# source venv/bin/activate

# Install requirements
pip install -r requirements.txt

# Launch the app (assuming there's a script or command to launch the app)
# Deployment-related tasks can go here

# Launch the app in the background and rerun it if the server crashes
count=0
while [ $count -lt 3 ]
do
    nohup python app.py &
    wait $!
    count=`expr $count + 1`
done

# Exiting the script
exit 0
