#!/usr/bin/env bash

git clone https://github.com/pyenv/pyenv $HOME/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $HOME/.pyenv/plugins/pyenv-virtualenvwrapper
echo '' >> $HOME/.bashrc_specific
echo '# PYENV #' >> $HOME/.bashrc_specific
echo '#########' >> $HOME/.bashrc_specific
echo '' >> $HOME/.bashrc_specific
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bashrc_specific
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.bashrc_specific
echo 'eval "$(pyenv init -)"' >> $HOME/.bashrc_specific
echo 'pyenv virtualenvwrapper_lazy' >> $HOME/.bashrc_specific
