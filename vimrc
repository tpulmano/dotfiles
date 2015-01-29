execute pathogen#infect()

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed

"syntax on

" Yank text to the OSX clipboard
"noremap <leader>y "*y
"noremap <leader>yy "*Y
" preserve indentation when pasting from the OSX clipboard
"noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" OSX Backspace Key
:set backspace=indent,eol,start

syntax enable
filetype plugin on
set number
let g:go_disable_autoinstall = 0
let g:neocomplete#enable_at_startup = 1

colorscheme molokai_nobg


" Go TagBar stuff
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
nmap <F8> :TagbarToggle<CR>
