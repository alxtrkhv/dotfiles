#!/usr/bin/env bash

git clone https://github.com/nvm-sh/nvm $HOME/.nvm
echo '' >> $HOME/.bashrc_specific
echo '# NVM #' >> $HOME/.bashrc_specific
echo '#######' >> $HOME/.bashrc_specific
echo '' >> $HOME/.bashrc_specific
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> $HOME/.bashrc_specific
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> $HOME/.bashrc_specific
