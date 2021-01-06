#!/usr/bin/env bash

git clone https://github.com/pyenv/pyenv $HOME/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $HOME/.pyenv/plugins/pyenv-virtualenvwrapper
echo '' >> $HOME/.zshrc_specific
echo '# PYENV #' >> $HOME/.zshrc_specific
echo '#########' >> $HOME/.zshrc_specific
echo '' >> $HOME/.zshrc_specific
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.zshrc_specific
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.zshrc_specific
echo 'eval "$(pyenv init -)"' >> $HOME/.zshrc_specific
echo 'pyenv virtualenvwrapper_lazy' >> $HOME/.zshrc_specific
