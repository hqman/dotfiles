set backspace=2   " Backspace deletes like most programs in insert mode
set history=50
set ruler         " show the cursor position all the time
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
" 当文件在外部被更改时，自动更新该文件
set autoread
set mouse=a
set mouse=a
syntax enable 
set ts=2
set showcmd
set nocompatible
" 高亮显示岗前行
set cursorline
" 使得按退格键一次可以删除4个空格
set softtabstop=4
set smarttab
set ai
" 智能缩进
set si
" 自动换行
set wrap
" 设置软宽度
set sw=4
  " vim-plug
call plug#begin('~/.vim/plugged')


Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/rking/ag.vim'
Plug 'https://github.com/tomtom/tcomment_vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/tpope/vim-fugitive'

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

"""""""""""""""""""""""""""""""""""""""""""
" 其他设置
"""""""""""""""""""""""""""""""""""""""""""
" 开启新行时使用智能自动缩进
set smartindent
set cin
set showmatch

