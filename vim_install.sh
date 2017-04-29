#install pathogen-vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#install vundle-vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#creating temporary directory
mkdir ~/.tmp

#YouCompleteMe vim plugin 
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe


#Getting YouCompleteMe Deps 
SAVE_FOLDER=${PWD}
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

#returning to install folder
cd $SAVE_FOLDER

#YouCompleteMe installer
python ~/.vim/bundle/YouCompleteMe/install.py --clang-completer --system-libclang  


#install dot-vim 
cp .vimrc ~/.vimrc 
vim -c ":PluginInstall"



