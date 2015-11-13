My Vim Configurations
=====================

Instructions
------------

**IMPORTANT!**  Backup your original `.vimrc` and `.vim` settings.

1. You'll need a 256-color terminal. You can do this by adding ``export TERM='xterm-256color'`` to the configuration file of your login shell. (`.zshrc`, `.bashrc`, etc...)
2. Then ``git clone https://github.com/pcchou/.vim.git && ln -s .vim/.vimrc`` in your home directory.
  * If you want to use powerline, you'll need to install it.
    1. You'll need python and python-pip.
    2. ``pip install powerline-status``
    3. Download a powerline font, and install it. <br>
       (Depending on your OS, you might have to do something different.Putting it in your `~/.fonts` directory will probably work in most Linux distros.)
    3. Set your terminal emulator to use it.
  * If you **DO NOT** want powerline, then do ``git clone https://github.com/pcchou/.vim.git && ln -s .vim/npl.vimrc .vimrc`` instead.
4. Open vim and wait for the plugins to install.
5. You're free to go! Remember to report any issue or suggestions.

You're welcome to report any issue or give suggestions.

Installed plugins
-----------------
* [vimproc by Shougo](https://github.com/Shougo/vimproc)
* [L9 by vim-scripts](https://github.com/vim-scripts/L9)
* [webapi-vim by mattn](https://github.com/mattn/webapi-vim)
* [supertab by ervandew](https://github.com/ervandew/supertab)
* [vim-autocomplpop by othree](https://github.com/othree/vim-autocomplpop)
* [jedi-vim by davidhalter](https://github.com/davidhalter/jedi-vim)
* [phpcomplete.vim by shawncplus](https://github.com/shawncplus/phpcomplete.vim)
* [vim-closetag by alvan](https://github.com/alvan/vim-closetag)
* [emmet-vim by mattn](https://github.com/mattn/emmet-vim)
* [vim-javascript by pangloss](https://github.com/pangloss/vim-javascript)
* [vim-arduino-syntax by sudar](https://github.com/sudar/vim-arduino-syntax)
* [vim-markdown by gabrielelana](https://github.com/gabrielelana/vim-markdown)
* [syntastic.git by scrooloose](https://github.com/scrooloose/syntastic.git)
* [vim-indent-object by michaeljsmith](https://github.com/michaeljsmith/vim-indent-object)
* [targets.vim by wellle](https://github.com/wellle/targets.vim)
* [CamelCaseMotion by bkad](https://github.com/bkad/CamelCaseMotion)
* [vim-easymotion by Lokaltog](https://github.com/Lokaltog/vim-easymotion)
* [matchit.zip by vim-scripts](https://github.com/vim-scripts/matchit.zip)
* [vim-sneak by justinmk](https://github.com/justinmk/vim-sneak)
* [vim-gitgutter by airblade](https://github.com/airblade/vim-gitgutter)
* [vim-preview by greyblake](https://github.com/greyblake/vim-preview)
* [vim-repeat by tpope](https://github.com/tpope/vim-repeat)
* [ctrlp.vim by ctrlpvim](https://github.com/ctrlpvim/ctrlp.vim)
* [YankRing.vim by vim-scripts](https://github.com/vim-scripts/YankRing.vim)
* [vim-indent-guides by nathanaelkane](https://github.com/nathanaelkane/vim-indent-guides)
* [vim-easy-align by junegunn](https://github.com/junegunn/vim-easy-align)
* [vim-sleuth by tpope](https://github.com/tpope/vim-sleuth)
* [vim-surround by tpope](https://github.com/tpope/vim-surround)
* [vim-commentary by tpope](https://github.com/tpope/vim-commentary)
* [delimitMate by Raimondi](https://github.com/Raimondi/delimitMate)
* [auto-pairs by jiangmiao](https://github.com/jiangmiao/auto-pairs)
* [vim-fakeclip by kana](https://github.com/kana/vim-fakeclip)
* [gist-vim by mattn](https://github.com/mattn/gist-vim)
* [SudoEdit.vim by chrisbra](https://github.com/chrisbra/SudoEdit.vim)
* [vim-arduino-ino by jplaut](https://github.com/jplaut/vim-arduino-ino)
* [vim-colors-solarized by altercation](https://github.com/altercation/vim-colors-solarized)
* [vim-sensible by tpope](https://github.com/tpope/vim-sensible)

pccline.vim
===========
I've made a super lightweight statusline that is inspired by powerline, for those who don't want to use powerline.
It's licensed under the [MIT License](http://opensource.org/licenses/MIT).

![screenshot](https://cloud.githubusercontent.com/assets/5615415/7441258/0e3720ec-f112-11e4-9f5b-1059af9c72d9.png)

If you want it seperately, just get [pccline.vim](https://github.com/pcchou/.vim/raw/master/pccline.vim) and include it in your .vimrc (`source /path/to/pccline.vim`).
