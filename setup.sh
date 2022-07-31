currdir=$(pwd)
cd ~ && ln -s ${currdir}/tmux.conf .tmux.conf
cd ~ && ln -s ${currdir}/vim .vim
cd ~ && ln -s ${currdir}/vim/.vimrc .vimrc
cd ~ && ln -s ${currdir}/vim/.nvimrc .vimrc
cd ~ && ln -s ${currdir}/alacritty.yml .alacritty.yml

cd ~ && mkdir -p .config/nvim
cd ~ && ln -s ${currdir}/nvim/init.vim .config/nvim/init.vim
