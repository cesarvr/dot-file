syntax on
set dir=~/.tmp	
set path+=**
set wildmenu
set backupdir=~/.vimtmp//,.
set directory=~/.vimtmp//,.
set mouse=a
set expandtab

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

filetype plugin indent on

set rtp+=$GOROOT/misc/vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme satori

map <c-f> :call JsBeautify()<cr> 
map <c-t> :tabedit<cr>

function! SwitchWindow(dir)
    let this = winnr()
 	if '+' == a:dir
	    execute "normal \<c-w>k"
	elseif '-' == a:dir
		execute "normal \<c-w>j"
	elseif '>' == a:dir
     	execute "normal \<c-w>l"
    elseif '<' == a:dir
        execute "normal \<c-w>h"
    else
	    echo "oops. check your ~/.vimrc"
        return ""
  	endif
endfunction
