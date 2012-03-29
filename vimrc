
call pathogen#infect('~/.vim/bundle')
syntax on
filetype plugin indent on

colorscheme rues

"let g:tagbar_width = 30
set shell=/bin/bash
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set smartcase		" Do smart case matching
set autoindent
set nu
set list
set listchars=tab:>\.,trail:\.,eol:¬,nbsp:%
set expandtab
set mouse=a
set enc=utf8
map j gj
map k gk
