#!/bin/sh

PROJECT_NAME="my-mac-setup"
PROJECT_AUTHOR="schlomok"
CURRENT_DIR="$(pwd)"

install() {
  echo "Installing [$PROJECT_NAME] by $PROJECT_AUTHOR..."
  echo "Directory: $CURRENT_DIR" 
  sh -c "$(curl https://raw.githubusercontent.com/schlomok/my-mac-setup/master/install-apps.sh)"
  exit 0
}

install
