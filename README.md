# GIT TOOLS

This repo provides a lazy script for git repo update.

## Usage

Use `source gittools.sh` to load functions in memory, then call the ones you need.

At sourcing, the script will ask you to provide the local repo path, the target git account and repository.

It will define the following variables :
 - `BASE_DIR` the working local directory
 - `GIT_USER` the target git repo username
 - `GIT_NAME` the target git repo name
 - `GIT_URL` the full url to the target repository

You can change these variables values on the fly, but read carefully the script and verify before any shit happens!

**!! Don't forget to re-source the file (or update variables) to update information if you change the working directory/repository !!**

## Available functions:

 - `git_config` : configures the systems git settings. To be done for the first git usage on the computer. 
 - `git_update "commit message"` : updates a repository with message "commit message" . An interactive mode will ask you for needed info . 

