#!/bin/sh

CURRENT_DIR="$(pwd)"

install_apps() {
  xcode-select --install;
  install_homebrew;
}

install_homebrew() {
  echo "Installing homebrew" 
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; 
  install_brew_apps
}

install_brew_apps() {
  echo "Installing Homebrew apps"
  brew update;
  brew upgrade;
  brew install      caskroom/cask/brew-cask;
  brew tap          homebrew/dupes;
  brew tap          caskroom/versions;
  
  # Fetch apps that require a password early
  brew cask fetch   pandoc;

  # General utilities
  brew install      ack;
  brew install      android-sdk;
  brew install      cabal-install;
  brew install      coreutils;
  brew install      cmake;
  brew install      ctags;
  brew install      curl;
  brew cask install dash;
  brew cask install doxygen;
  brew install      findutils;
  brew install      ffmpeg;
  brew install      ghc;
  brew install      gnu-sed --with-default-names;
  brew install      gradle;
  brew cask install menumeters;
  brew install      mono;
  brew install      node;
  brew cask install path-finder;
  brew install      p7zip;
  brew cask install the-unarchiver
  brew install      tldr-pages/tldr/tldr;
  brew install      wget;
  brew install      homebrew/dupes/grep;

  # Preferred utilities
  brew cask install caffeine;
  brew cask install cakebrew;
  brew cask install cheatsheet;
  brew cask install dropbox;
  brew cask install flux;
  brew cask install marked;
  brew cask install nylas-n1;
  brew install      pianobar; # todo: include how to set credentials
  brew cask install spectacle;
  brew cask install spotify;
  brew cask install vlc;
  
  # Browsers
  brew cask install firefox;
  brew cask install google-chrome;
  brew cask install opera;

  # Gaming
  brew cask install battle-net;
  brew cask install steam;
  
  # Development

  ## Editors
  brew cask install android-studio;
  brew cask install atom;
  brew cask install eclipse-ide;
  brew cask install eclipse-java;
  brew cask install eclipse-platform;
  brew cask install emacs;
  brew cask install intellij-idea-ce;
  brew cask install sublime-text;
  brew cask install visual-studio-code;
  install_vim;

  ## Tools
  install_git;
  brew cask install iterm2; # todo: automate my iTerm 2 setup (guake)
  brew cask install packer;
  brew cask install pandoc;
  brew cask install sourcetree;
  brew cask install vagrant-manager;
  brew cask install vmware-fusion;
  install_zsh;

  # Languages
  brew install      go;
  brew cask install java;
  brew install      python;
  brew install      python3;
  install_rvm;
  
  # Fonts
  brew tap caskroom/fonts;
  brew cask install font-source-code-pro;

  # Miscellaneous
  brew install      cmatrix;
  brew install      cowsay;
  brew install      figlet;
  gem install       lolcat;

  # Exceptions
  brew install      tmux;
  gem install       tmuxinator;

  # Cleanup
  
  brew linkapps;
  brew update;
  brew upgrade;
  brew doctor;
  brew cleanup;

  cowsay -f elephant EPIC INSTALL $USER! | lolcat
}

install_git() {
  brew install      git;
  brew install      colordiff;
  brew cask install diffmerge;
  npm install -g    diff-so-fancy;

  git config --global color.diff-highlight.oldNormal "red bold";
  git config --global color.diff-highlight.oldHighlight "red bold 52";
  git config --global color.diff-highlight.newNormal "green bold";
  git config --global color.diff-highlight.newHighlight "green bold 22";
  git config --global core.pager "diff-highlight | diff-so-fancy | less --tabs=1,5 -R";
}

install_vim() {
  brew install macvim --with-override-system-vim;

  if [ ! -f /usr/local/bin/vi ]; then 
    ln -s /usr/local/Cellar/macvim/*/bin/vim /usr/local/bin/vi;
  fi
  
  if [ ! -f /usr/local/bin/vim ]; then
    ln -s /usr/local/Cellar/macvim/*/bin/vim /usr/local/bin/vim
  fi
}

install_zsh() {
  brew install zsh;
  brew install zsh-completions;

  # Install oh-my-zsh
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh;
  
  # Set zsh as default shell
  command -v zsh | sudo tee -a /etc/shells;
  sudo chsh -s "$(command -v zsh)" "${USER}"
}

install_rvm() {
  curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails
}

install_apps
