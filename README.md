# My Personal Mac OS X Setup

## Installation

Run the following commands to install the complete setup.

    sh -c "$(curl https://raw.githubusercontent.com/schlomok/my-mac-setup/master/install.sh)"

## What's In It

### Applications

I include a complete list of all the major applications I install. I've tried to automate this as heavily as possible - any exceptions
will be listed as an exception. I try to automate all application installation through [Homebrew](http://brew.sh/). I may write my own 
blog post on why I use Homebrew (and why you should too), but for now, [this post](https://chadthompson.me/2013/05/why-homebrew/) by Chad
Thompson should suffice. In the shortest possible summary, Homebrew is just a very clean way to install and manage your applications.

In rare cases, I may use something other than Homebrew to install. This is often due to the brewed version either giving too many 
complications, or sometimes simply just not being available.

Without further ado, here is the list:

#### Required

* [Homebrew](http://brew.sh/)
  - The best available package manager for OS X. Necessary for installation of the rest of the applications.
* [Homebrew Cask](http://caskroom.io/)
  - A tap that extends more support for applications leveraging Homebrew's capabilities. Necessary to expand the depth of applications
    that can be installed.

#### General Utilities

* [Ack](http://beyondgrep.com/)
* [Android SDK](http://developer.android.com/sdk/index.html)
* cabal-install
* [GNU core utilities](http://www.gnu.org/software/coreutils/coreutils.html)
* [CMake](https://cmake.org/)
* [Ctags](https://en.wikipedia.org/wiki/Ctags)
* curl
* dash
* doxygen
* findutils
* ffmpeg
* ghc
* git
* gradle
* grep
* menumeters
* mono
* node
* path-finder
* p7zip
* the-unarchiver
* tldr
* tree
* wget

#### Preferred utilities

* Bartender
* Bowtie
* Caffeine
* Cakebrew
* Cheatsheet
* Dropbox
* Flux
* Geektool
* [GitBook](https://www.gitbook.com/)
* Notational Velocity
* Nylas N1
* Pianobar
* Spectacle
* Spotify
* VLC

#### Web Browsers

* Firefox
* Google Chrome
* Opera

#### Gaming

* Battle Net
* Steam

#### Editors

* Android Studio
* Atom
* Brackets
* Eclipse (IDE, Platform, Java)
* Emacs
* IntelliJ IDEA CE
* Sublime Text
* Visual Studio Code
* Vim
  - I actually install MacVim and override the system vim. This is due to a handful of plugins I utilize with Vim that basically 
    require this.
  - My [.vimrc](https://github.com/schlomok/vimrc) is automatically installed by my [.dotfiles](https://github.com/schlomok/dotfiles). 
    However, they can be installed separately via my vimrc repository.

#### Developer Tools

* ColorDiff
* DiffMerge
* GitHub Desktop
* iTerm2 
  - I intend to include an automated setup of my iTerm 2 setup alongside with a blog post explaining how I set up my terminal in 
    general. For now, however, this is just a simple installation of the application.
* Packer
* Pandoc
* SourceTree
* Tmux
  - My Tmux setup is included in my dotfiles.
* Tmuxinator
* VirtualBox
  - I actually prefer [VMware Fusion](https://www.vmware.com/products/fusion), but I just include VirtualBox because it is free and 
    suits most basic needs for a VM.
* Vagrant
* [VMware Fusion](https://www.vmware.com/products/fusion)
* VMware Fusion
* ZSH
    - I install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) alongside zsh. My .zshrc is included in my dotfiles.
* ZSH Completions

#### Languages

* Go
* Java
* Python
* Python3
* Ruby
    - I install Ruby using [RVM](https://rvm.io/) (which is therefore installed first).

#### Miscellaneous

* CMatrix
* Cowsay
* Figlet
* lolcat
    - Via gem. If you switch ruby versions, you will need to re-install.

#### Fonts

* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

### Dotfiles

I also automatically install my [.dotfiles](https://github.com/schlomok/dotfiles). Head over to that repository to see what's in store 
there.

## TODO

* [ ] Fix up README to include links and rationale for installs.
* [ ] Create cronjobs for automating updating of multiple apps
* [ ] Automate configuration for several applications
* [ ] Include parameters to allow my installation of specific types of applications, or different
      setups
  - For example, my setup for a lightweight desktop, a functionally ready Java development 
    environment, a web development environment, or all of the above! By default, it will include
    everything.
