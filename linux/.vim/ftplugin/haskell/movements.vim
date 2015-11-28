" next top-level type signature
nnoremap <script> <silent> ]f /^\w[^:=]*::<CR>
" previous top-level type signature
nnoremap <script> <silent> [f ?^\w[^:=]*::<CR>
" next type signature
nnoremap <script> <silent> ]l /^\s*\w[^:=]*::<CR>
" previous type signature
nnoremap <script> <silent> [l ?^\s*\w[^:=]*::<CR>
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
" beginning of module exports (wonky)
nnoremap <script> <silent> [M gg/^\s*)\s*where\s*$<CR>zb<CR>
" next named chunk of documentation
" https://www.haskell.org/haddock/doc/html/ch03s05.html
nnoremap <script> <silent> ]n /^-- \$\w\+<CR>z<CR>
" previous named chunk of documentation
nnoremap <script> <silent> [n ?^-- \$\w\+<CR>z<CR>
