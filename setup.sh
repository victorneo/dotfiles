#!/bin/bash

currdir=$(pwd)

cd ~ && ln -s ${currdir}/tmux.conf .tmux.conf

cd ~ && mkdir -p .config
cd ~ && ln -s ${currdir}/nvim .config/nvim
cd ~ && mkdir -p ~/.config/zed
cd ~ && ln -s ${currdir}/zed/settings.json .config/zed/settings.json


git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.mnff "merge --no-ff"
git config --global alias.co "checkout"
git config --global alias.po "push origin"
git config --global alias.po "push origin"
