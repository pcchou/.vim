pcchou's vimrc
===

How to use?
---

*IMPORTANT!*  Backup your original `.vimrc` and `.vim` settings.

1. You'll need a 256-color terminal. You can do this by adding ``export TERM='xterm-256color'`` to your `.bashrc`.
2. Then ``git clone https://github.com/pcchou/.vim.git && ln -s .vim/.vimrc``
  * If you want to use powerline, you'll need to install it.
    1. ``pip install --user git+git://github.com/Lokaltog/powerline``
    2. Download a powerline font, and install it by puting in your `~/.fonts`.
    3. Set your terminal to use it.
  * If you don't want to use powerline, please add a alias in your `.bashrc` or `.bash_aliases` (or whatever it is with your shell): ``alias vim='vim -u ~/.vim/npl.vimrc'`` to start vim with a different vimrc.
4. Open vim and wait for the plugins to install.
5. You're free to go! Remember to report any issue or suggestions.

You're welcome to report any issue or give suggestions.
