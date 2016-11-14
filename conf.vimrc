" Setting up NeoBundle - the vim plugin bundler
set nocompatible               " Be iMproved

" Local configs
if filereadable(glob("~/.vim/local.vimrc"))
    source ~/.vim/local.vimrc
endif

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"Add your bundles here
source ~/.vim/plugins.vimrc

"...All your other bundles...
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
" Setting up Vundle - the vim plugin bundler end


" Global settings
set nu
set showmatch
set ai
set tabstop=4
set shiftwidth=4
set expandtab
set ic
set modeline
set incsearch
set cursorline
set showcmd
set history=1000
set encoding=utf-8
set wildmode=longest,list,full
syntax enable

" map Ctel-L to be nohl, clear search highlight
nnoremap <c-l> :nohl<cr>

" close tag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" GitGutter
let g:gitgutter_eager = 1
let g:gitgutter_realtime = 1
let g:gitgutter_sign_column_always = 1
set updatetime=750

" NERDTree Tab
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

" Paste mode
set pastetoggle=<F10>

" Browser-style tab keybind
nnoremap <C-t> :tabnew<CR>
nnoremap <c-w>w :q<CR>
nnoremap gg0 :tabfirst<cr>
nnoremap gg$ :tablast<cr>

" Alt+n tab keybind
for i in range(1, 8)
    exe "map <A-".i."> ".i."gt"
    exe "map <Esc>".i." ".i."gt"
endfor
exe "map <A-9> g$"
exe "map <Esc>9 g$"

" Tmux-style window keybind
nnoremap <c-w>% :vsplit<CR>
nnoremap <c-w>" :split<CR>

" Completions
filetype plugin on
let g:jedi#completions_enabled = 0 " We use YCM nowadays!
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1

autocmd filetype c,cpp nnoremap <F5> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype python nnoremap <F5> :w <bar> exec '!python '.shellescape('%')<CR>
nnoremap <F4> :YcmDiags<CR>

" FileTypes
autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md set filetype=markdown
autocmd BufNewFile,BufRead *.zsh,*.zsh-theme,*.bash set filetype=sh
autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit,markdown set dictionary+=/usr/share/dict/words
autocmd FileType gitcommit,markdown set linebreak
autocmd FileType html,markdown,javascript set shiftwidth=2 tabstop=2 et
autocmd FileType javascript,php let delimitMate_expand_cr = 1
"autocmd FileType javascript,php let delimitMate_matchpairs = '(:),[:],<:>'
au FileType php set omnifunc=phpcomplete#CompletePHP
filetype plugin indent on     " Required!

" Misc.
map <F8> gg=G
map <C-A> ggVG
nnoremap <silent>;; :s/$/;/<cr>

" Yank Ring
let g:yankring_replace_n_pkey = "<c-m>"
nnoremap <silent><F7> :YRShow<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=6
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_php_checkers = ['php']
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
map <F6> :SyntasticReset<CR>
cnoreabbrev <expr>synpyf getcmdtype() == ":" && getcmdline() == 'synpyf' ? "let g:syntastic_python_checkers = ['pyflakes']" : 'synpyf'
cnoreabbrev <expr>synpyl getcmdtype() == ":" && getcmdline() == 'synpyl' ? "let g:syntastic_python_checkers = ['pylint']" : 'synpyl'
nmap gfp :lprev<cr>
nmap gfn :lnext<cr>
nmap gfl :llast<cr>
nmap gff :lfirst<cr>

" SudoEdit
let g:sudo_no_gui=1
function SudoWritenq()
    SudoWrite
    q
    :endfunction
cnoreabbrev <expr>swq getcmdtype() == ":" && getcmdline() == 'swq' ? 'call SudoWritenq()' : 'swq'
cnoreabbrev <expr>sw getcmdtype() == ":" && getcmdline() == 'sw' ? 'SudoWrite' : 'sw'

" vim-easy-align
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" vim-javascript
let g:javascript_enable_domhtmlcss = 1

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:AutoPairsShortcutToggle = '<M-m>'
