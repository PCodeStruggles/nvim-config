set background=light
hi clear
if exists('syntax_on') | syntax reset | endif
let g:colors_name = 'acetm'

" Base
hi Normal       guifg=#000000 guibg=#ffffff
hi Cursor       guifg=#ffffff guibg=#000000
hi CursorLine   guibg=#ededed gui=NONE
hi Visual       guibg=#b5d5ff
hi LineNr       guifg=#333333 guibg=#f0f0f0
hi CursorLineNr guifg=#333333 guibg=#dcdcdc gui=NONE
hi ColorColumn  guibg=#e8e8e8
hi MatchParen   guifg=NONE guibg=NONE gui=NONE guisp=#c0c0c0
hi Search       guibg=#fcff00 guifg=#000000
hi NonText      guifg=#bfbfbf
hi SpecialKey   guifg=#bfbfbf
hi Pmenu        guifg=#000000 guibg=#f0f0f0
hi PmenuSel     guifg=#000000 guibg=#b5d5ff

" Keywords and types (all plain blue, no bold)
hi Statement    guifg=#0000ff gui=NONE
hi Conditional  guifg=#0000ff gui=NONE
hi Repeat       guifg=#0000ff gui=NONE
hi Label        guifg=#0000ff gui=NONE
hi Keyword      guifg=#0000ff gui=NONE
hi Exception    guifg=#0000ff gui=NONE
hi StorageClass guifg=#0000ff gui=NONE
hi Structure    guifg=#0000ff gui=NONE
hi Typedef      guifg=#0000ff gui=NONE
hi Type         guifg=#0000ff gui=NONE
hi PreProc      guifg=#0000ff
hi Include      guifg=#0000ff
hi Define       guifg=#0000ff
hi Macro        guifg=#0000ff
hi PreCondit    guifg=#0000ff

" Operators (grey-blue)
hi Operator     guifg=#687687 gui=NONE

" Literals
hi Constant     guifg=#585cf6
hi Boolean      guifg=#585cf6
hi Number       guifg=#0000cd
hi Float        guifg=#0000cd
hi String       guifg=#036a07
hi Character    guifg=#036a07
hi SpecialChar  guifg=#c5060b

" Comments (Ace has no italics)
hi Comment      guifg=#4c886b gui=NONE
hi Todo         guifg=#4c886b guibg=NONE gui=bold

" Everything else stays black
hi Identifier   guifg=#000000 gui=NONE
hi Function     guifg=#000000 gui=NONE
hi Special      guifg=#000000
hi Delimiter    guifg=#000000
hi Error        guifg=#ff0000 guibg=#ffe5e5
