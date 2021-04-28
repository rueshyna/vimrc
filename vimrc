syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'glepnir/oceanic-material'
Plug 'tpope/vim-surround'
Plug 'skwp/vim-easymotion'
Plug 'dpelle/vim-Grammalecte'

call plug#end()

let g:fzf_preview_window = ['right:80%:hidden', 'ctrl-/']
nmap <Leader>f :Files!<CR>
nmap <Leader>ft :Files! src/proto_alpha/lib_protocol/<CR>
nmap <Leader>a :Rg!<CR>

au BufNewFile,BufRead *.fr set spell spelllang+=fr
au BufNewFile,BufRead *.mk set spell spelllang+=en

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
nmap <leader>e :MerlinErrorCheck<return>
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

" set folding
set foldmethod=indent
set foldlevel=3
set foldnestmax=3
set foldcolumn=3
silent! loadview

" set auto-pair
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutJump='<M-j>'

let g:grammalecte_cli_py='~/.local/dev/Grammalecte-fr-v2.0.0/grammalecte-cli.py'

set breakindent
"set showbreak=--

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nmap <leader>l :call NumberToggle()<cr>

function! LayoutToggle()
  if(&nu== 1)
    set nonu
    set nobreakindent
    set listchars&
    set nofoldenable
  else
    set nu
    set breakindent
    set listchars=tab:>\-,trail:\.,eol:¬,nbsp:% " set unprintable characters
    set foldmethod=indent
    silent! loadview
  endif
endfunc

nmap <leader>lt :call LayoutToggle()<cr>

" NERDTree
let g:NERDTreeShowHidden = 1

let g:ale_lint_on_text_changed='normal'
let g:ale_lint_on_enter=1
let g:ale_linters = {'haskell':[]}

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
