set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed

syntax on

" Yank text to the OSX clipboard
"noremap <leader>y "*y
"noremap <leader>yy "*Y
" preserve indentation when pasting from the OSX clipboard
"noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" OSX Backspace Key
:set backspace=indent,eol,start
