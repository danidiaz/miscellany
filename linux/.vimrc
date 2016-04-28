"http://items.sjbach.com/319/configuring-vim-right
"http://nvie.com/posts/how-i-boosted-my-vim/
"http://net.tutsplus.com/articles/general/top-10-pitfalls-when-switching-to-vim/

set nocompatible

execute pathogen#infect()
set autoindent
filetype plugin indent on
"set smartindent

set expandtab
set tabstop=4
set shiftwidth=4

set foldminlines=0
set foldopen-=search

" shows status bar even with one window. 
" useful for the vim-airline plugin.
set laststatus=2 
                  
set relativenumber
set number
set showmatch
set hidden

set backupdir=/tmp
set directory=/tmp

set vb t_vb=

" http://learnvimscriptthehardway.stevelosh.com/chapters/10.html
inoremap jk <Esc>

" use ghc functionality for haskell files
" au Bufenter *.hs compiler ghc

" http://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
" au Bufenter *.hs norm zR
" https://github.com/dag/vim2hs
let g:haskell_conceal = 0

syntax on
filetype on
filetype plugin on
filetype indent on

let g:haddock_browser = "/usr/bin/chromium"

let g:python_host_prog="/usr/bin/python"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:netrw_banner=0

set ruler
set showcmd
set hlsearch
set incsearch

set shortmess=atI

let mapleader = ","

" colorscheme zenburn
colorscheme desert

let g:unite_prompt = '$'
noremap <script> <silent> <unique> <Leader>f :Unite -no-split file buffer<CR>
noremap <script> <silent> <unique> <Leader>b :Unite -no-split buffer<CR>
noremap <script> <silent> <unique> <Leader>r :Unite -no-split file_mru<CR>
noremap <script> <silent> <unique> <Leader>m :Unite -no-split bookmark<CR>

" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
" http://vim.wikia.com/wiki/Easy_edit_of_files_in_the_same_directory
nnoremap <Leader>l :l %:p:h<CR>:pwd<CR>

noremap <script> <silent> <unique> <Leader>y "*y
noremap <script> <silent> <unique> <Leader>Y :%y*<CR>
noremap <script> <silent> <unique> <Leader>p "*p
noremap <script> <silent> <unique> <Leader>P "*P
noremap <script> <silent> <unique> <Leader>d "_d
noremap <script> <silent> <unique> <Leader>D :%d<CR>:w!<CR>
noremap <script> <silent> <unique> <Leader>e :e!<CR>
noremap <script> <silent> <unique> <Leader>w :update!<CR>
noremap <script> <silent> <unique> <Leader>q :q!<CR>
noremap <script> <silent> <unique> <Leader>x :x!<CR>
noremap <script> <silent> <unique> <Leader>u `[v`]~`]

" noremap <script> <silent> <unique> <BS> <C-^>
" noremap <script> <silent> <unique> <SPACE> :ls<CR>
" noremap <script> <silent> <unique> <TAB> gt

" other possible remaps: tab, space, backspace, return, 
"                        ctrl-m, ctrl-h, ctrl-j, ctrl-k, ctrl-n, ctrl-p, 
"                        much stuff starting with [, perhaps s.

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8 nobomb
  set fileencodings=utf-8,latin1
endif

if has("win32") || has("win64")
   set directory=$TMP
end
