source ~/.vim/conf.vimrc

function Genstatus()
    let ret = ''
    let modemode = mode()
    if modemode ==# "i"
        let ret .='%#lINSERT# INSERT %*'
    elseif modemode ==# "R"
        let ret .='%#lREPLACE# REPLACE %*'
    elseif modemode ==# "v"
        let ret .='%#lVISUAL# VISUAL %*'
    elseif modemode ==# "^V"
        let ret .='%#lVISUAL# V-BLCK %*'
    elseif modemode ==# "V"
        let ret .='%#lVISUAL# V-LINE %*'
    elseif modemode ==# "s"
        let ret .='%#lVISUAL# SELECT %*'
    elseif modemode ==# "S"
        let ret .='%#lVISUAL# S-LINE %*'
    elseif modemode ==# "^S"
        let ret .='%#lVISUAL# S-BLCK %*'
    else
        let ret .='%#lNORMAL# NORMAL %*'
    endif
    let ret .='%#lROFLAG# %r%*'               " Read Only Flag
    let ret .='%1* %<%f %*'           " File Path
    let ret .='%#lMODIFLAG#*%m %*'               " Modified Flag
    let ret .='%2*%=%{&ff} %*'         " File Format
    let ret .='%2*%{&enc} %*'          " File Encoding
    let ret .='%2*%y  %*'             " File Type
    let ret .='%1*  %p%%  %*'       " Percentage in File
    let ret .='%#lLINENUM#  %l%*'             " Line Number
    let ret .='%#lCOLNUM#:%v  %*'            " Column Number
    return ret
endfunction
set statusline=%!Genstatus()
"call Genstatus()

set background=dark
colorscheme solarized
highlight clear SignColumn

hi IndentGuidesOdd  ctermbg=3
hi IndentGuidesEven ctermbg=4

hi StatusLine guifg=#9e9e9e guibg=#303030 ctermfg=247 ctermbg=236
hi User1 guifg=#ffffff guibg=#585858 ctermfg=15 ctermbg=240
hi User2 guifg=#9e9e9e guibg=#303030 ctermfg=247 ctermbg=236
hi lROFLAG guifg=#d70000 guibg=#585858 ctermfg=160 ctermbg=240
hi lMODIFLAG guifg=#ffdf00 guibg=#585858 ctermfg=220 ctermbg=240
hi lLINENUM guifg=#262626 guibg=#d0d0d0 ctermfg=235 ctermbg=252
hi lCOLNUM guifg=#005f00 guibg=#d0d0d0 ctermfg=22 ctermbg=252
hi lNORMAL guifg=#005f00 guibg=#afd700 ctermfg=22 ctermbg=148
hi lINSERT guifg=#005f5f guibg=#ffffff ctermfg=23 ctermbg=15
hi lVISUAL guifg=#875f00 guibg=#ffaf00 ctermfg=94 ctermbg=214
hi lREPLACE guifg=#ffffff guibg=#d70000 ctermfg=15 ctermbg=160
