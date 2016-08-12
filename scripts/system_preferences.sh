#!/bin/bash

# DESCRIPTION
# Applies System and application defaults.

### System defualts
printf "Changing System Defaults\n\n"
printf "System - Avoid creating .DS_Store files on network volumes\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

printf "System - Automatically restart if system freezes\n"
systemsetup -setrestartfreeze on

printf "System - Disable the 'Are you sure you want to open this application?' dialog\n"
defaults write com.apple.LaunchServices LSQuarantine -bool false

### Keyboard Settings
printf "Changing Keyboard Settigns\n\n"
printf "Keyboard - Automatically illuminate built-in MacBook keyboard in low light\n"
defaults write com.apple.BezelServices kDim -bool true

printf "Keyboard - Turn off keyboard illumination when computer is not used for 5 minutes\n"
defaults write com.apple.BezelServices kDimTime -int 300

printf "Keyboard - Enable keyboard access for all controls\n"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

printf "Keyboard - Set a fast keyboard repeat rate\n"
defaults write NSGlobalDomain KeyRepeat -int 1

printf "Keybaord - Set a shorter delay until key reapeat\n"
defaults write NSGlobalDomain InitialKeyRepeat -int 25

printf "Keyboard - Disable press-and-hold for keys in favor of key repeat\n"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

### Trackpad Settings
printf "Changing Trackpad Settings\n\n"
printf "Trackpad - Enable tap to click for current user and the login screen\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
#defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

printf "Trackpad - Use CONTROL (^) with scroll to zoom\n"
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

printf "Trackpad - Follow keyboard focus while zoomed in\n"
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

### Bluetooth Settings
printf "Changing Bluetooth Settigns\n\n"
printf "Bluetooth - Increase sound quality for headphones/headsets\n"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

### Dock Settings
printf "Changing Dock Settings\n\n"
printf "Dock - Don’t show Dashboard as a Space\n"
defaults write com.apple.dock "dashboard-in-overlay" -bool true

### Finder Settings
printf "Changing Finder Settings\n\n"
printf "Finder - Show filename extensions\n"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "Finder - Disable the warning when changing a file extension\n"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

printf "Finder - Show path bar\n"
defaults write com.apple.finder ShowPathbar -bool true

printf "Finder - Show status bar\n"
defaults write com.apple.finder ShowStatusBar -bool true

printf "Finder - Disable the warning before emptying the Trash\n"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

printf "FInder - Show icons for hard drives, servers, and removable media on the desktop\n"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true && \
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

printf "Finder - Use current directory as default search scope in Finder\n"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

### Safari Settings
printf "Changing Safari Settings\n\n"
printf "Safari - Hide bookmarks bar\n"
defaults write com.apple.Safari ShowFavoritesBar -bool false

printf "Safari - Use Contains instead of Starts With in search banners\n"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

printf "Safari - Enable the Develop menu and the Web Inspector\n"
defaults write com.apple.Safari IncludeDevelopMenu -bool true

printf "Chrome - Prevent native print dialog, use system dialog instead\n"
defaults write com.google.Chrome DisablePrintPreview -boolean true

### Mail Settings
printf "Changing Mail Settings\n\n"
printf "Mail - Copy email addresses as 'foo@example.com' instead of 'Foo Bar <foo@example.com>'\n"
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

printf "Mail - Enable COMMAND+ENTER to send mail\n"
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"

### TextEdit Settings
printf "Changing TextEdit Settings\n\n"
printf "TextEdit - Use plain text mode for new documents\n"
defaults write com.apple.TextEdit RichText -int 0

printf "TextEdit - Open and save files as UTF-8 encoding\n"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

### Disk Utility Settings
printf "Changing Disk Utility Settings\n\n"
printf "Disk Utility - Enable debug menu\n"
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

### Time Machine Settings
printf "Changing Time Machine Settings\n\n"
printf "Time Machine - Prevent prompting to use new hard drives as backup volume\n"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

### Printer Settings
printf "Changing Printer Settings\n\n"
printf "Printer - Automatically quit printer app once the print jobs complete\n"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

### QuickTime Settings
printf "Changing QuickTime Settings\n\n"
printf "QuickTime - Auto-play videos when opened with QuickTime Player\n"
defaults write com.apple.QuickTimePlayerX MGPlayMovieOnOpen 1

# UNUSED SETTINGS

#printf "System - Disable boot sound effects\n"
#sudo nvram SystemAudioVolume=" "

#printf "System - Reveal IP address, hostname, OS version, etc. when clicking the login window clock\n"
#sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

#printf "System - Disable automatic termination of inactive apps\n"
#defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

#printf "System - Disable auto-correct\n"
#defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

#printf "iCloud - Save to disk by default\n"
#defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

#printf "Finder - Allow text selection in Quick Look\n"
#defaults write com.apple.finder QLEnableTextSelection -bool true
