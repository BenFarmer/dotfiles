filetype on
filetype plugin on
filetype indent on

set number
syntax on

" sets up tab consistency
set tabstop=4
set shiftwidth=4
set expandtab

set nowrap

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

"""""""""" Folding """""""""""""""""""""""""""""""""
    au BufRead,BufNewFile *.py setlocal foldmethod=expr
    au BufRead,BufNewFile *.txt setlocal foldmethod=indent

    nnoremap <space> za
    vnoremap <space> zf
    au BufWinLeave *.* mkview                    " save folds
    au BufWinLeave *.* silent loadview           " get folds -warning - gives error on loads
    let g:SimplyFold_docstring_preview = 1
