#!/bin/sh

USERNAME="vscode"
DIR_NAME="learning-nestjs"

# ------------------------------
# DO NOT EDIT FOLLOWING
# ------------------------------
sudo chown -R ${USERNAME}:${USERNAME} /workspaces/${DIR_NAME}
sudo chsh -s /usr/bin/zsh ${USERNAME}
# date
sudo cp /etc/localtime /etc/localtime.org
sudo ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
strings /etc/localtime
# git
git config --global init.defaultBranch main
git config --global core.ignorecase false
git config --global user.name ${GIT_USERNAME}
git config --global user.email ${GIT_USEREMAIL}
# packages
npm install -g npm npm-check-updates
npm install -g @nestjs/cli
