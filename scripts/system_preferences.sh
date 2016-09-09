#!/bin/bash

# DESCRIPTION
# Applies System and application defaults.

### System defualts
printf "\nChanging System Defaults\n\n"
printf "\nSystem - Avoid creating .DS_Store files on network volumes\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

printf "\nSystem - Automatically restart if system freezes\n"
systemsetup -setrestartfreeze on

printf "\nSystem - Disable the 'Are you sure you want to open this application?' dialog\n"
defaults write com.apple.LaunchServices LSQuarantine -bool false

printf "\n Save JPEG for screenshots instead of PNG for small footprint\n"
defaults write com.apple.screencapture type jpg

### Keyboard Settings
printf "\nChanging Keyboard Settigns\n\n"
printf "\nKeyboard - Automatically illuminate built-in MacBook keyboard in low light\n"
defaults write com.apple.BezelServices kDim -bool true

printf "\nKeyboard - Turn off keyboard illumination when computer is not used for 5 minutes\n"
defaults write com.apple.BezelServices kDimTime -int 300

printf "\nKeyboard - Enable keyboard access for all controls\n"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

printf "\nKeyboard - Set a fast keyboard repeat rate\n"
defaults write NSGlobalDomain KeyRepeat -int 1

printf "\nKeybaord - Set a shorter delay until key reapeat\n"
defaults write NSGlobalDomain InitialKeyRepeat -int 25

printf "\nKeyboard - Disable press-and-hold for keys in favor of key repeat\n"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

### Trackpad Settings
printf "\nChanging Trackpad Settings\n\n"
printf "\nTrackpad - Enable tap to click for current user and the login screen\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
#defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

printf "\nTrackpad - Use CONTROL (^) with scroll to zoom\n"
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

printf "\nTrackpad - Follow keyboard focus while zoomed in\n"
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

### Bluetooth Settings
printf "\nChanging Bluetooth Settigns\n\n"
printf "\nBluetooth - Increase sound quality for headphones/headsets\n"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

### Dock Settings
printf "\nChanging Dock Settings\n\n"
printf "\nDock - Don’t show Dashboard as a Space\n"
defaults write com.apple.dock "dashboard-in-overlay" -bool true

### Finder Settings
printf "\nChanging Finder Settings\n\n"
printf "\nFinder - Show filename extensions\n"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "\nFinder - Disable the warning when changing a file extension\n"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

printf "\nFinder - Show path bar\n"
defaults write com.apple.finder ShowPathbar -bool true

printf "\nFinder - Show status bar\n"
defaults write com.apple.finder ShowStatusBar -bool true

printf "\nFinder - Disable the warning before emptying the Trash\n"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

printf "\nFInder - Show icons for hard drives, servers, and removable media on the desktop\n"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true && \
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

printf "\nFinder - Use current directory as default search scope in Finder\n"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

### Safari Settings
printf "\nChanging Safari Settings\n\n"
printf "\nSafari - Hide bookmarks bar\n"
defaults write com.apple.Safari ShowFavoritesBar -bool false

printf "\nSafari - Use Contains instead of Starts With in search banners\n"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

printf "\nSafari - Enable the Develop menu and the Web Inspector\n"
defaults write com.apple.Safari IncludeDevelopMenu -bool true

printf "\nChrome - Prevent native print dialog, use system dialog instead\n"
defaults write com.google.Chrome DisablePrintPreview -boolean true

### Mail Settings
printf "\nChanging Mail Settings\n\n"
printf "\nMail - Copy email addresses as 'foo@example.com' instead of 'Foo Bar <foo@example.com>'\n"
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

printf "\nMail - Enable COMMAND+ENTER to send mail\n"
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"

### TextEdit Settings
printf "\nChanging TextEdit Settings\n\n"
printf "\nTextEdit - Use plain text mode for new documents\n"
defaults write com.apple.TextEdit RichText -int 0

printf "\nTextEdit - Open and save files as UTF-8 encoding\n"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

### Disk Utility Settings
printf "\nChanging Disk Utility Settings\n\n"
printf "\nDisk Utility - Enable debug menu\n"
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

### Time Machine Settings
printf "\nChanging Time Machine Settings\n\n"
printf "\nTime Machine - Prevent prompting to use new hard drives as backup volume\n"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

### Printer Settings
printf "\nChanging Printer Settings\n\n"
printf "\nPrinter - Automatically quit printer app once the print jobs complete\n"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

### QuickTime Settings
printf "\nChanging QuickTime Settings\n\n"
printf "\nQuickTime - Auto-play videos when opened with QuickTime Player\n"
defaults write com.apple.QuickTimePlayerX MGPlayMovieOnOpen 1

# UNUSED SETTINGS

#printf "\nSystem - Disable boot sound effects\n"
#sudo nvram SystemAudioVolume=" "

#printf "\nSystem - Reveal IP address, hostname, OS version, etc. when clicking the login window clock\n"
#sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

#printf "\nSystem - Disable automatic termination of inactive apps\n"
#defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

#printf "\nSystem - Disable auto-correct\n"
#defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

#printf "\niCloud - Save to disk by default\n"
#defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

#printf "\nFinder - Allow text selection in Quick Look\n"
#defaults write com.apple.finder QLEnableTextSelection -bool true
