" Setting up NeoBundle - the vim plugin bundler
set nocompatible               " Be iMproved

" NeoBundle check and auto install
let iCanHazNeoBundle=1
let NeoBundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
if !filereadable(NeoBundle_readme)
    echo "Installing NeoBundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
    let iCanHazNeoBundle=0
endif

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles
source ~/.vim/bundles.vimrc

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
if iCanHazNeoBundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :NeoBundleInstall
endif

call neobundle#end()

NeoBundleCheck

" Global settings
set nu
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

" map Ctel-L to be nohl, clear search highlight
nnoremap <c-l> :nohl<cr>

" close tag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" FileTypes
autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md set filetype=markdown
autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType gitcommit setlocal spell
autocmd FileType gitcommit,markdown set dictionary+=/usr/share/dict/words
autocmd FileType gitcommit,markdown set linebreak

" Solarized
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" GitGutter
let g:gitgutter_eager = 1
let g:gitgutter_realtime = 1
let g:gitgutter_sign_column_always = 1
set updatetime=750
highlight clear SignColumn

" NERDTree Tab
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

" Paste mode
set pastetoggle=<F10>

" Browser-style tab keybind
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
nnoremap <c-w>w :q<CR>

" Tmux-style window keybind
nnoremap <c-w>% :vsplit<CR>
nnoremap <c-w>" :split<CR>

" Completions
filetype plugin on
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabMappingForward = "<tab>"
let g:SuperTabMappingBackward = "<s-tab>"
inoremap <c-e> <c-x><c-k>
inoremap <c-l> <c-x><c-l>
set omnifunc=syntaxcomplete#Complete

" select ALL
map <C-A> ggVG

" Yank Ring
let g:yankring_replace_n_pkey = "<c-m>"
nnoremap <silent><F7> :YRShow<CR>
