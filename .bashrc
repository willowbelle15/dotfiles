#Define some functions

update() {
  cwd=$(pwd)
  cd ~
  cd $cwd
}

#If the bucket directory doesn't exist, create it
if [[ ! -d "/usr/local/bucket" ]]; then
  mkdir /usr/local/bucket
fi

#If .hushlogin doesn't exist, create it
if [[ ! -f "~/.hushlogin" ]]; then
  touch ~/.hushlogin
fi

#Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool true

#Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

#Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool true

#Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

#Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

#Add autocomplete for Homebrew
#source `brew --repository`/Library/Contributions/brew_bash_completion.sh

#Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#Set my editor to Atom
export EDITOR="atom"
