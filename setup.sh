currdir=$(pwd)
cd ~ && ln -s ${currdir}/tmux.conf .tmux.conf
cd ~ && ln -s ${currdir}/vim .vim
cd ~ && ln -s ${currdir}/vim/.vimrc .vimrc
cd ~ && ln -s ${currdir}/vim/.nvimrc .vimrc
cd ~ && ln -s ${currdir}/alacritty.yml .alacritty.yml

cd ~ && mkdir -p .config/nvim
cd ~ && ln -s ${currdir}/nvim/init.vim .config/nvim/init.vim

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.mnff "merge --no-ff"
git config --global alias.co "checkout"
git config --global alias.po "push origin"
