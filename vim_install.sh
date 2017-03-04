#install pathogen-vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#install vundle-vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#creating temporary directory
mkdir ~/.tmp

#install dot-vim 
cp .vimrc ~/.vimrc 
vim -c ":PluginInstall"


