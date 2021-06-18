#!/usr/bin/env bash

git clone https://github.com/nvm-sh/nvm $HOME/.nvm
echo '' >> $HOME/.zshrc_specific
echo '# NVM #' >> $HOME/.zshrc_specific
echo '#######' >> $HOME/.zshrc_specific
echo '' >> $HOME/.zshrc_specific
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> $HOME/.zshrc_specific
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> $HOME/.zshrc_specific
