"http://items.sjbach.com/319/configuring-vim-right
"http://nvie.com/posts/how-i-boosted-my-vim/
"http://net.tutsplus.com/articles/general/top-10-pitfalls-when-switching-to-vim/

set nocompatible

execute pathogen#infect()
"set autoindent
"set smartindent

set expandtab
set tabstop=4
set shiftwidth=4

" shows status bar even with one window. 
" useful for the vim-airline plugin.
set laststatus=2 
                  
set number
set showmatch
set hidden

set backupdir=/tmp
set directory=/tmp

set vb t_vb=

"inoremap ii <Esc>

" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc

syntax on
filetype on
filetype plugin on
filetype indent on

let g:haddock_browser = "/usr/bin/chromium"

set ruler
set showcmd
set hlsearch
set incsearch

set shortmess=atI

let mapleader = ","

colorscheme zenburn

let g:unite_prompt = '$'
noremap <script> <silent> <unique> <Leader>f :Unite -no-split file buffer<CR>
noremap <script> <silent> <unique> <Leader>b :Unite -no-split buffer<CR>
noremap <script> <silent> <unique> <Leader>r :Unite -no-split file_mru<CR>
noremap <script> <silent> <unique> <Leader>m :Unite -no-split bookmark<CR>

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8 bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

if has("win32") || has("win64")
   set directory=$TMP
end
