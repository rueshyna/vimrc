
call pathogen#infect('~/.vim/bundle','./.vim_bundle')
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

"colorscheme rues
set background=dark
colorscheme oceanic_material

let g:oceanic_material_allow_bold = 1
let g:oceanic_material_allow_italic = 1
let g:oceanic_material_allow_underline = 1
let g:oceanic_material_allow_undercurl = 1
let g:oceanic_material_allow_reverse = 1

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
"set clipboard=unnamed

" for ocaml
nmap <leader>d :MerlinDestruct<CR>
nmap <leader>r :MerlinRename
syntax sync minlines=2000

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
silent! loadview

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

" NERDTree
let g:NERDTreeShowHidden = 1

let g:deoplete#enable_at_startup = 1

" Disable haskell-vim omnifunc
"let g:haskellmode_completion_ghc=0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse=1
let g:necoghc_use_stack=1

let g:ale_lint_on_text_changed='normal'
let g:ale_lint_on_enter=1
let g:ale_linters = {'haskell':[]}

let g:qf_resize_max_ratio=0.2
"let g:ghcmod_max_preview_size=3

"autocmd FileType haskell GhcModCheckAndLintAsync
"autocmd BufWritePost *.hs GhcModCheckAndLintAsync
" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
