" next top-level type signature
nnoremap <script> <silent> ]f /^\w[^:=$]*\(::\\|\n\s*::\)<CR>
" previous top-level type signature
nnoremap <script> <silent> [f ?^\w[^:=$]*::\(::\\|\n\s*::\)<CR>
" next type signature
nnoremap <script> <silent> ]l /^\s*\w[^:=$]*\(::\\|\n\s*::\)<CR>
" previous type signature
nnoremap <script> <silent> [l ?^\s*\w[^:=$]*\(::\\|\n\s*::\)<CR>
" next data declaration
nnoremap <script> <silent> ]t /^\(data \\|newtype \\|type \\|class\)<CR>
" previous data declaration
nnoremap <script> <silent> [t ?^\(data \\|newtype \\|type \\|class\)<CR>
" beginning of imports
nnoremap <script> <silent> [i gg/^import <CR>z<CR>
" end of imports
nnoremap <script> <silent> [I G?^import <CR>zb
" beginning of module exports
nnoremap <script> <silent> [m gg/^module <CR>z<CR>
" end of module exports (wonky)
nnoremap <script> <silent> [M gg/^\s*)\s*where\s*$<CR>zb<CR>
" next named chunk of documentation
" https://www.haskell.org/haddock/doc/html/ch03s05.html
nnoremap <script> <silent> ]n /^-- \$\w\+<CR>z<CR>
" previous named chunk of documentation
nnoremap <script> <silent> [n ?^-- \$\w\+<CR>z<CR>

" surround for pragma delimiters
let b:surround_35 = "{-# \r #-}"
