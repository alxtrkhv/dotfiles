#!/usr/bin/env bash

brew install openjdk@8
sudo ln -sfn /usr/local/opt/openjdk@8/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-8.jdk
echo "" >> $HOME/.zshrc_specific
echo "# OPENJDK #" >> $HOME/.zshrc_specific
echo "###########" >> $HOME/.zshrc_specific
echo "" >> $HOME/.zshrc_specific
echo "export JAVA_HOME=`/usr/libexec/java_home -v 1.8`" >> $HOME/.zshrc_specific
