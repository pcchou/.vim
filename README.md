pcchou's vimrc
===

How to use?
---

Backup your original `.vimrc` and `.vim` settings.

1. You'll need to be using a 256-color terminal. You can add ``export TERM='xterm-256color'`` to your `.bashrc`.
2. ``git clone https://github.com/pcchou/.vim.git && ln -s .vim/.vimrc`` in your home directory.
3. -\
  * If you want to use powerline, you'll need to install powerline.
    1. ``pip install --user git+git://github.com/Lokaltog/powerline`` to install powerline.
    2. Download a powerline font, and put it in your `~/.fonts` to install it.
    3. Set your terminal to use it.
  * If you don't want to use powerline, please ``git checkout nopowerline`` in your `~/.vim` directory (the repository).
4. Open vim and wait for the plugins to install.
5. Use it and report any issue or suggestions.


Plugin List
---
TBD
* [closetag](http://www.vim.org/scripts/script.php?script_id=13)
* [ctrlp](https://github.com/kien/ctrlp.vim)
* [NeoBundle](https://github.com/Shougo/neobundle.vim) -- Vim plugin manager
* [syntastic](https://github.com/scrooloose/syntastic)
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
* [vim-surround](https://github.com/tpope/vim-surround)
* [SuperTab](https://github.com/ervandew/supertab)
* [Jedi-Vim] (https://github.com/davidhalter/jedi-vim)
