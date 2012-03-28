
call pathogen#infect('~/.vim/bundle')
syntax on
filetype plugin indent on

colorscheme rues

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autoindent
set nu
set list
set listchars=tab:>\.,trail:\.,eol:¬,nbsp:%
set expandtab
set mouse=a
set enc=utf8
map j gj
map k gk
