"""""""""""""""""""""""""""""""""''''''''
"rues.vim"
 "-rueshyna rewrite at 2009"
"""""""""""""""""""""""""""""""""''''''''
"jai.vim "
" - jaiyalas 2008/01/09 "
""""""""""""""""""""""""""""''''''''''''''''''

set background=dark
hi clear
if exists("syntax_on")
syntax reset
endif

"let g:colors_name="jai"
let g:colors_name="rues"

set t_Co=256


" ------------------------------------------------------------------
 "hi = highlight

 hi Text ctermfg=230 ctermbg=Black cterm=none                       guifg=230 guibg=Black gui=none
 hi NonText ctermfg=none ctermbg=Black cterm=none                   guifg=none guibg=Black gui=none
 hi Normal ctermfg=230 ctermbg=Black cterm=none                     guifg=230 guibg=Black gui=none
 hi Search ctermfg=White ctermbg=Black cterm=none                   guifg=White guibg=Black gui=none
 hi Visual ctermfg=Black ctermbg=223 cterm=none                     guifg=Black guibg=223 gui=none
 hi LineNr ctermfg=230 ctermbg=17 cterm=none                        guifg=230 guibg=17 gui=none

 hi Cursor ctermfg=White ctermbg=Gray cterm=none                    guifg=White guibg=Gray gui=none
 hi CursorLine ctermfg=Gray ctermbg=Black cterm=none                guifg=Gray guibg=Black gui=none

 hi StatusLine ctermfg=White ctermbg=53 cterm=Bold                  guifg=White guibg=53 gui=Bold
 hi StatusLineNC ctermfg=White ctermbg=53                           guifg=White guibg=53

 hi Tag ctermfg=none                                                guifg=none
 hi Error ctermfg=221 ctermbg=196                                   guifg=221 guibg=196
 hi FoldColum ctermbg=Black                                         guibg=Black
 hi Folded ctermfg=White ctermbg=DarkGreen cterm=bold               guifg=White guibg=DarkGreen gui=bold

 hi VertSplit ctermfg=Blue ctermbg=DarkBlue cterm=none              guifg=Blue guibg=DarkBlue gui=none
 hi SignColumn ctermfg=LightGreen ctermbg=DarkGreen cterm=none      guifg=LightGreen guibg=DarkGreen gui=none
 hi WildMenu ctermfg=LightGreen ctermbg=DarkGreen cterm=none        guifg=LightGreen guibg=DarkGreen gui=none
 hi Directory ctermfg=LightGreen                                    guifg=LightGreen
 hi ModeMsg ctermfg=White ctermbg=124 cterm=Bold                    guifg=White guibg=124 gui=Bold

 " -------------------------------------------------------------

 hi Function ctermfg=26 ctermbg=none cterm=none                     guifg=26 guibg=none gui=none
 hi Comment ctermfg=White ctermbg=22 cterm=bold                     guifg=White guibg=22 gui=bold
 hi Statement ctermfg=227 ctermbg=none cterm=none                   guifg=227 guibg=none gui=none
 hi Identifier ctermfg=225 ctermbg=none cterm=none                  guifg=225 guibg=none gui=none

 hi Constant ctermfg=219 ctermbg=none cterm=underline,bold          guifg=219 guibg=none gui=underline,bold
 hi Operator ctermfg=212 ctermbg=none cterm=none                    guifg=212 guibg=none gui=none
 hi Character ctermfg=166 ctermbg=none cterm=bold                   guifg=166 guibg=none gui=bold
 hi Number ctermfg=48 ctermbg=none cterm=none                       guifg=48 guibg=none gui=none
 hi Boolean ctermfg=White ctermbg=233 cterm=bold                    guifg=White guibg=233 gui=bold
 hi Float ctermfg=50 ctermbg=none cterm=none                        guifg=50 guibg=none gui=none
 hi String ctermfg=204 ctermbg=none cterm=bold                      guifg=204 guibg=none gui=bold

 hi Define ctermfg=124 ctermbg=none cterm=none                      guifg=124 guibg=none gui=none
 hi Keyword ctermfg=226 ctermbg=none cterm=none                     guifg=226 guibg=none gui=none
 hi Repeat ctermfg=51 ctermbg=none cterm=none                       guifg=51 guibg=none gui=none
 hi Delimiter ctermfg=46 ctermbg=none cterm=none                    guifg=46 guibg=none gui=none
 hi Special ctermfg=196 ctermbg=none cterm=none                     guifg=196 guibg=none gui=none
 hi SpecialChar ctermfg=166 ctermbg=none cterm=underline,bold       guifg=166 guibg=none gui=underline,bold

 hi Include ctermfg=1 ctermbg=none cterm=bold                       guifg=1 guibg=none gui=bold
 hi rubyPseudoVariable ctermfg=141 ctermbg=none cterm=none          guifg=141 guibg=none gui=none
 hi rubyInterpolation ctermfg=96 ctermbg=none cterm=none            guifg=96 guibg=none gui=none
 hi rubyStringDelimiter ctermfg=1 ctermbg=none cterm=bold           guifg=1 guibg=none gui=bold
 hi rubySymbol ctermfg=128 ctermbg=none cterm=bold                  guifg=128 guibg=none gui=bold
 hi Type ctermfg=220 ctermbg=none cterm=none                        guifg=220 guibg=none gui=none 
