
call pathogen#infect('~/.vim/bundle','./.vim_bundle')
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

colorscheme rues

set shell=/bin/bash      " Use bash shell
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set smartcase           " Do smart case matching
set nu                  " Line number
set list                " Print unprintable characters
set listchars=tab:>\-,trail:\.,eol:¬,nbsp:% " set unprintable characters
set expandtab           " Set tag to space
set tabstop=4
"set mouse=a
set enc=utf8
"set spell spelllang=en_us
set hlsearch
set backspace=2
set clipboard=unnamed

ca tb tabnew

" map key
map j gj
map k gk
imap ∫ <M-b>
imap ∆ <M-j>
imap π <M-p>
nmap + <C-W>+
nmap - <C-W>-
nmap <Right>  <C-w>>
nmap <Left>  <C-w><

" set indent
set sw=2
set autoindent          " Auto indent

" tagbar config
let g:tagbar_autofocus = 2
let g:tagbar_width = 30

" set folding
set foldmethod=indent
set foldlevel=3
set foldnestmax=3
set foldcolumn=3
loadview

" vim for pig
augroup filetypedetect 
    au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

" vim for latex
let g:tex_flavor='latex'

" set snipmate
let g:snippets_dir="~/.vim/bundle/snipmate/snippets/,~/.vim/custom/snipmate/"

" set Powerline
set laststatus=2
set fillchars+=stl:\ ,stlnc:\

" set auto-pair
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutJump='<M-j>'

let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0

" set vimpress
let VIMPRESS = 'BlogRues'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

set breakindent
"set showbreak=--

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

let g:syntastic_haskell_ghc_mod_exec = 'ghc-mod.sh'

" NERDTree
let g:NERDTreeShowHidden=1
