# All Apps
ls -lh /Applications >~/Library/Mobile\ Documents/com~apple~CloudDocs/AppList/All_AppList

# MAS Apps
/usr/local/bin/mas list >~/Library/Mobile\ Documents/com~apple~CloudDocs/AppList/MAS_AppList

# brew Apps
brew bundle dump --describe --force --file=~/Library/Mobile\ Documents/com~apple~CloudDocs/AppList/brewfile

# brew cask Apps
#/usr/local/bin/brew list --cask >~/Library/Mobile\ Documents/com~apple~CloudDocs/AppList/BrewCask_AppList
