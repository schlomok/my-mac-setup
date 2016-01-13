#!/bin/sh

CURRENT_DIR="$(pwd)"

install_apps() {
  xcode-select --install;
  install_homebrew;
  install_fonts
}

install_homebrew() {
  echo "Installing homebrew" 
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; 
  install_brew_apps
}

install_brew_apps() {
  echo "Installing relevant homebrew apps"
  brew update;
  brew install caskroom/cask/brew-cask;
  brew upgrade;
  
  # Fetch apps that require a password early
  brew cask fetch   pandoc;

  # General utilities
  brew install      ack;
  brew install      android-sdk;
  brew install      coreutils;
  brew install      ctags;
  brew install      curl;
  brew cask install dash;
  brew cask install doxygen;
  brew install      findutils;
  brew install      ffmpeg;
  brew install      fortune;
  brew install      git;
  brew install      gradle;
  brew cask install menumeters;
  brew install      mono;
  brew install      node;
  brew cask install path-finder;
  brew install      p7zip;
  brew cask install the-unarchiver
  brew install      tldr-pages/tldr/tldr;
  brew install      tree;
  brew install      wget;

  brew tap homebrew/dupes;
  brew install      homebrew/dupes/grep;

  # Preferred utilities
  brew install pianobar; # todo: include how to set credentials

  brew cask install bartender;
  brew cask install bowtie;
  brew cask install caffeine;
  brew cask install cakebrew;
  brew cask install cheatsheet;
  brew install      cmake;
  brew cask install dropbox;
  brew cask install flux;
  brew cask install geektool; # todo: include automatic geeklets
  brew cask install notational-velocity;
  brew cask install nylas-n1;
  brew cask install spectacle;
  brew cask install spotify;
  brew cask install textexpander;
  brew cask install vlc;
  
  # Development

  ## Editors
  brew cask install android-studio;
  brew cask install atom;
  brew cask install brackets;
  brew cask install eclipse-ide;
  brew cask install eclipse-platform;
  brew cask install emacs;
  brew cask install intellij-idea-ce;
  brew cask install sublime-text;
  brew cask install visual-studio-code;
  install_vim;

  ## Tools
  brew install      colordiff;
  brew cask install diffmerge;
  brew cask install github-desktop;
  brew cask install iterm2; # todo: automate my iTerm 2 setup (guake)
  brew cask install packer;
  brew cask install pandoc;
  brew cask install sourcetree;
  brew cask install virtualbox;
  brew cask install vagrant;
  brew cask install vagrant-manager;
  install_zsh;
  install_tmux;

  # Languages
  install_java;
  install_rvm;
  brew install      go;
  brew install      python;
  brew install      python3;

  # Browsers
  brew cask install firefox;
  brew cask install google-chrome;
  brew cask install opera;

  # Gaming
  brew cask install battle-net;
  brew cask install steam;

  # Entertaining, but unncessary
  brew install      cmatrix;
  brew install      cowsay;
  brew install      figlet;

  gem install lolcat;

  brew linkapps;
  brew doctor;
  brew cleanup;

  cowsay -f elephant EPIC INSTALL $USER! | lolcat
}

install_vim() {
  brew install macvim --with-override-system-vim;

  ln -s /usr/local/Cellar/macvim/*/bin/vim /usr/local/bin/vi;
  ln -s /usr/local/Cellar/macvim/*/bin/vim /usr/local/bin/vim
}

install_zsh() {
  brew install zsh;
  brew install zsh-completions;

  # Install oh-my-zsh
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh;
  chsh -s /bin/zsh;
}

install_tmux() {
  brew install tmux;
}

install_java() {
  brew cask install java;
  brew cask install eclipse-java;
}

install_fonts() {
  brew tap caskroom/fonts;
  brew cask install font-source-code-pro;
  
  # todo: set this as the default font for iterm2
}

install_rvm() {
  echo "Installing RVM (along with latest ruby and rails)"
  curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails
}

install_apps
