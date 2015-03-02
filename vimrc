call pathogen#infect()

" OSX {{{
" Yank text to the OSX clipboard
"noremap <leader>y "*y
"noremap <leader>yy "*Y
" preserve indentation when pasting from the OSX clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
set clipboard=unnamed
" OSX Backspace Key
:set backspace=indent,eol,start
" }}}

" Spaces & Tabs {{{
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" }}}

" Syntax {{{
syntax enable
filetype plugin on
" }}}

" Display {{{
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
" }}}

" Colors {{{
colorscheme molokai_nobg
" }}}

" Folding {{{
nnoremap <space> za
vnoremap <space> zf
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10
" }}}

" Buffers {{{
set confirm
" }}}

" Line Shortcuts {{{
" Move vertically by visual line
nnoremap j gj
nnoremap k gk
" }}}

" Leader {{{
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>a :Ag
" }}}

" Plugin Vim-go {{{
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_structs = 1
" }}}

" Plugin TagBar {{{
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
" }}}

" Plugin CtrlP {{{
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
set wildignore+=*/build/**
set wildignore+=*.class
" }}}

" Filetype specific settings {{{
" Obj-C
autocmd FileType objc let g:alternateExtensions_h = "m" 
autocmd FileType objc let g:alternateExtensions_m = "h"
augroup configgroup
    autocmd!

    " HTML two spaces indentation
    autocmd FileType html setlocal sw=2 ts=2 sts=2
    autocmd FileType less setlocal sw=2 ts=2 sts=2
    autocmd FileType js   setlocal sw=2 ts=2 sts=2
    autocmd FileType jsx  setlocal shiftwidth=2
    autocmd FileType jsx  setlocal tabstop=2
    autocmd FileType jsx  setlocal softtabstop=2
    
    " Less CSS Highlighting
    autocmd BufNewFile,BufRead *.less setlocal filetype=css
augroup END
" }}}

" Backups {{{
set backup
set backupdir=~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.tmp,~/tmp/var/tmp,tmp
set writebackup
" }}}

set modelines=1
" vim:foldmethod=marker:foldlevel=0
