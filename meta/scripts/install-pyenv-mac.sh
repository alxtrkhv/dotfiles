#!/usr/bin/env bash

brew install pyenv
brew install pyenv-virtualenvwrapper
echo '' >> $HOME/.zshrc_specific
echo '# PYENV #' >> $HOME/.zshrc_specific
echo '#########' >> $HOME/.zshrc_specific
echo 'eval "$(pyenv init -)"' >> $HOME/.zshrc_specific
echo 'pyenv virtualenvwrapper_lazy' >> $HOME/.zshrc_specific
echo 'export LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib"' >> $HOME/.zshrc_specific
