"  Mouseless Driven Development by Hadi Hariri https://www.youtube.com/watch?v=UH6YVv9js3s 
" https://github.com/JetBrains/ideavim
" https://github.com/Valloric/dotfiles/blob/master/intellij/ideavimrc
" https://resources.jetbrains.com/storage/products/intellij-idea/docs/IntelliJIDEA_ReferenceCard.pdf
set surround
let mapleader = ","

" These are leader-based alternative shortcuts for actions whose corresponding
" idea shortcuts require hand-stretching combinations, function keys, Home or
" Insert.
"
" Shift + F6 in idea.
" Alt + R, then R (through the menu bar) also seems to work fine.
" map <Leader>r :action RenameElement<CR>
" Ctrl + F12 in idea.
map <Leader>s :action FileStructurePopup<CR>
" Perhaps just use the Idea shortcut Ctrl-Alt-B
" Alt + N, then m (through the menu bar) also seems to work, but it is
" non-unique.
map <Leader>i :action GotoImplementation<CR>
map <Leader>m :action GotoImplementation<CR>
map <Leader>d :action GotoImplementation<CR>
" Alt + F7 in idea. 
" Find usages in file is Ctrl + F7. 
" Alt + E, then F, then U (through the menu bar) also seems to work fine.
map <Leader>f :action FindUsages<CR>
" Alt + Insert in idea.
map <Leader>g :action Generate<CR>
" F12 
map <Leader>w :action JumpToLastWindow<CR>
map <Leader>r :action ChooseRunConfiguration<CR>

" These shortcuts mimic the default Idea action for one edition mode, using the
" Vim action for the other.
"
" Same as default IDEA action, but only in normal mode. Delete previous char
" in insert mode.
" See also Ctrl + Shift + H for method hierarchy, Ctrl + Alt + H for call
" hierarchy.
map <C-h> :action TypeHierarchy<CR>
" Same as default IDEA action, but only in insert mode. Enter block-visual
" mode in normal mode.
imap <C-v> <Esc>:action $Paste<CR>

"
" Here are mappings about which I'm less sure.

" This is for going to related symbols. I can't find any effect in the community edition.
" map <Leader>g :action GotoRelated<CR> 

" uppercase last inserted text. Perhpas just use gU`[ instead.
" map <Leader>u `[v`]~`]

" Can also use Ctrl-Shift-[
map <Leader>[ :action EditorCodeBlockStart<CR>
" Can also use Ctrl-Shift-]
map <Leader>] :action EditorCodeBlockEnd<CR>

" This is Ctrl-W in the default keymap, but we are using it for Vim.
map <C-s> :action EditorSelectWord<CR>

" uppercase last inserted word
imap <C-l> <Esc>bgUawea 

" still available: Ctrl-k
