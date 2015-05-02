source ~/.vim/conf.vimrc

set statusline =
set statusline +=%5*\ %r%*               " Read Only Flag
set statusline +=%1*\ %<%f\ %*           " File Path
set statusline +=%6*%m\ %*               " Modified Flag
set statusline +=%2*%=%{&ff}\ %*         " File Format
set statusline +=%2*%{&enc}\ %*          " File Encoding
set statusline +=%2*%y\ \ %*             " File Type
set statusline +=%3*\ \ %p%%\ \ %*       " Percentage in File
set statusline +=%4*\ \ %l%*             " Line Number
set statusline +=%7*:%v\ \ %*            " Column Number

set background=dark
colorscheme solarized
highlight clear SignColumn

hi IndentGuidesOdd  ctermbg=3
hi IndentGuidesEven ctermbg=4

hi StatusLine guifg=#9e9e9e guibg=#303030 ctermfg=247 ctermbg=236
hi User1 guifg=#ffffff guibg=#585858 ctermfg=15 ctermbg=240
hi User2 guifg=#9e9e9e guibg=#303030 ctermfg=247 ctermbg=236
hi User3 guifg=#9e9e9e guibg=#585858 ctermfg=247 ctermbg=240
hi User4 guifg=#262626 guibg=#d0d0d0 ctermfg=235 ctermbg=252
hi User5 guifg=#d70000 guibg=#585858 ctermfg=160 ctermbg=240
hi User6 guifg=#ffdf00 guibg=#585858 ctermfg=220 ctermbg=240
hi User7 guifg=#005f00 guibg=#d0d0d0 ctermfg=22 ctermbg=252
