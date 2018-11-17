syntax enable 
set ts=4
set showcmd
set nocompatible
" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tomtom/tcomment_vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/kien/ctrlp.vim'
call plug#end()

set number
set wrap
set ruler
set incsearch
colorscheme one
map <C-n> :NERDTreeToggle<CR>
" n move line to up down  
"nmap n :m +1<CR>
"nmap m :m -2<CR>

