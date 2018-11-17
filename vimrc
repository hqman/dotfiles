set backspace=2   " Backspace deletes like most programs in insert mode
set history=50
set ruler         " show the cursor position all the time
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

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
set backspace=2   " Backspace deletes like most programs in insert mode
set history=50
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands


