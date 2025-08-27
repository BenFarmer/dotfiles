" Automatic Installations
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Settings
filetype on
filetype plugin on
filetype indent on

set number
set nocompatible
syntax on

" sets up tab consistency
set tabstop=4
set shiftwidth=4
set expandtab

set nowrap

" disable the fucking bell
set belloff=all

" incrementally highlights marching characters typed during search
set incsearch

" ignore case will ignore capital letters during search
" smart case will override ignorecase if searching forcapital letters
set ignorecase
set smartcase

" show partial command you type in the last line of the screen
set showcmd

" shows the mode you are on 
set showmode

" sets saved commands in history default is 20
set history=50


" custom commands
command WQ wq
command Wq wq
command W w
command Q q

"""""""""" Folding """""""""""""""""""""""""""""""""
set foldmethod=indent
set foldnestmax=1

au BufRead,BufNewFile *.py setlocal foldmethod=expr
au BufRead,BufNewFile *.txt setlocal foldmethod=indent

nnoremap <space> za
vnoremap <space> zf
au BufWinLeave *.* mkview                    " save folds
au BufWinLeave *.* silent loadview           " get folds -warning - gives error on loads
let g:SimplyFold_docstring_preview = 1

