#!/bin/sh

PROJECT_NAME="my-mac-setup"
PROJECT_AUTHOR="schlomok"
CURRENT_DIR="$(pwd)"

install() {
  echo "Installing [$PROJECT_NAME] by $PROJECT_AUTHOR..."
  echo "Directory: $CURRENT_DIR" 

  echo "Installing preferred applications"
  sh -c "$(curl https://raw.githubusercontent.com/schlomok/my-mac-setup/master/install-apps.sh)"

  echo "Installing dotfiles"
  sh -c "$(curl https://raw.githubusercontent.com/schlomok/dotfiles/master/install.sh)"
  
  echo "Installing OS X preferences"
  sh -c "$(curl https://raw.githubusercontent.com/schlomok/my-mac-setup/master/install-os-x-preferences.sh)"

  exit 0
}

install
