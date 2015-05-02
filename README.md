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

pcc-line
--------
I've made a super lightweight statusline that is inspired by powerline, for those who don't want to use powerline.
It's licensed under the [MIT License](http://opensource.org/licenses/MIT).

If you want it seperately, just get [pccline.vim](https://github.com/pcchou/.vim/blob/master/pccline.vim) and include it in your .vimrc (`source pccline.vim`).
