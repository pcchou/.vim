source ~/.vim/conf.vimrc

" powerline
set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

set background=dark
colorscheme hybrid
highlight clear SignColumn

hi IndentGuidesOdd  ctermbg=3
hi IndentGuidesEven ctermbg=4
