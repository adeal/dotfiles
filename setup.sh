#!/bin/bash

# need xcode to do anything fun on MacOS
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# enable touchID for sudo (create a backup for safety)
sed -i.bak '2i\
auth sufficient tid_pam.d\
' /etc/pam.d/sudo

# change shell to zsh
which zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

. symlink.sh

# restart karabiner as required after setting symlink
launchctl kickstart -k gui/`id -u`/org.pqrs.karabiner.karabiner_console_user_server
