# zplug
export ZPLUG_HOME=$(brew --prefix zplug)
source $ZPLUG_HOME/init.zsh

# Async for zsh, used by pure
zplug "mafredri/zsh-async", from:github, defer:0
zplug "lib/completion", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:2
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug load

alias brews='brew list -1'
alias casks='brew cask list -1'
alias md='mkdir'
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dotfiles='pushd ~/dotfiles/'