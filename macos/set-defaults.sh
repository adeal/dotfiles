# Ask for the administrator password upfront
sudo -v


# Gracefully close any open System Preferences panes,
# to prevent them from overriding any setting
osascript -e 'quit app "System Preferences"'

# Increase bluetooth quality
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Max (editable)" 80
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" 80
defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool (editable)" 80
defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool Min (editable)" 80
defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool" 80
defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Max" 80
defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Min" 80

# Show Drives in finder sidebar
defaults write com.apple.sidebarlists systemitems -dict-add ShowHardDisks -bool true

# Display battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Dock
defaults write com.apple.dock orientation -string "left"
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock tilesize -int 30
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0.1


# Finder
defaults write com.apple.Finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Override Hammerspoon config location from $HOME to $HOME/.config (XDG_CONFIG_HOME)
defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"

# Alternative:
#osascript \
#    -e 'set appsToRestart to {"Dock", "Finder"}'\
#    -e 'repeat with appToRestart in appsToRestart'\
#    -e      'quit app appToRestart'\
#    -e 'end repeat'
osascript<<END
    set appsToRestart to {"Dock", "Finder"}
    repeat with appToRestart in appsToRestart
        quit app appToRestart
    end repeat
END

