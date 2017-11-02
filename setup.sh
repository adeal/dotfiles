#!/bin/bash

# change shell to zsh
which zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

. symlink.sh

# restart karabiner as required after setting symlink
launchctl kickstart -k gui/`id -u`/org.pqrs.karabiner.karabiner_console_user_server
