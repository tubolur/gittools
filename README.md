# GIT TOOLS

This repo provides a lazy script for git repo update.

## usage

Use `source gittools.sh` to load functions in memory, then call the ones you need.

Available functions:

 - `git_config` : configures the systems git settings. To be done for the first git usage on the computer. 
 - `git_update "commit message"` : updates a repository with message "commit message" . An interactive mode will ask you for path and urls . 

