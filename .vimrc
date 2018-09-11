syntax on
set dir=~/.tmp	
set mouse=a
set expandtab
set shiftwidth=2
set tabstop=2
set path+=**
filetype plugin indent on

execute pathogen#infect()
colorscheme softlight
set rtp+=$GOROOT/misc/vim

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


" navigating tabs with cntrl <- ->
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Switch window mappings /*{{{*/
nnoremap <A-Up> :normal <c-r>=SwitchWindow('+')<CR><CR>
nnoremap <A-Down> :normal <c-r>=SwitchWindow('-')<CR><CR>
nnoremap <A-Left> :normal <c-r>=SwitchWindow('<')<CR><CR>
nnoremap <A-Right> :normal <c-r>=SwitchWindow('>')<CR><CR>
 
map <c-f> :call JsBeautify()<cr> 
map <c-t> :tabedit<cr>


