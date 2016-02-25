My Personal Mac OS X Setup
==========================

Installation
------------

Run the following commands to install the complete setup.

    sh -c "$(curl https://raw.githubusercontent.com/schlomok/my-mac-setup/master/install.sh)"

What's In It
------------

### Applications

I include a complete list of all the major applications I install. I've
tried to automate this as heavily as possible - any exceptions will be
listed as an exception. I try to automate all application installation
through [Homebrew](http://brew.sh/). I may write my own blog post on why
I use Homebrew (and why you should too), but for now, [this
post](https://chadthompson.me/2013/05/why-homebrew/) by Chad Thompson
should suffice. In the shortest possible summary, Homebrew is just a
very clean way to install and manage your applications.

In rare cases, I may use something other than Homebrew to install. This
is often due to the brewed version either giving too many complications,
or sometimes simply just not being available.

Without further ado, here is the list:

#### Required

-   [Homebrew](http://brew.sh/)
    -   The best available package manager for OS X. Necessary for
        installation of the rest of the applications.
-   [Homebrew Cask](http://caskroom.io/)
    -   A tap that extends more support for applications leveraging
        Homebrew's capabilities. Necessary to expand the depth of
        applications that can be installed.

#### General Utilities

-   [Ack](http://beyondgrep.com/)
-   [Android SDK](http://developer.android.com/sdk/index.html)
-   [cabal-install](https://www.haskell.org/cabal/download.html)
-   [GNU core
    utilities](http://www.gnu.org/software/coreutils/coreutils.html)
-   [CMake](https://cmake.org/)
-   [Ctags](https://en.wikipedia.org/wiki/Ctags)
-   [curl](https://curl.haxx.se/)
-   [dash](https://kapeli.com/dash)
-   [doxygen](http://www.stack.nl/~dimitri/doxygen/)
-   [findutils](http://www.gnu.org/software/findutils/)
-   [ffmpeg](https://www.ffmpeg.org/)
-   [ghc](https://www.haskell.org/ghc/)
-   [git](https://git-scm.com/)
-   [diff-so-fancy](https://github.com/stevemao/diff-so-fancy)
-   [gradle](http://gradle.org/)
-   [grep](http://www.gnu.org/software/grep/manual/grep.html)
-   [menumeters](https://www.ragingmenace.com/software/menumeters/)
-   [MonoMac](http://www.mono-project.com/docs/tools+libraries/libraries/monomac/)
-   [node](https://nodejs.org/en/)
-   [Path Finder](http://www.cocoatech.com/pathfinder/)
-   [P7ZIP](http://p7zip.sourceforge.net/)
-   [The Unarchiver](http://wakaba.c3.cx/s/apps/unarchiver.html)
-   [tldr](http://tldr-pages.github.io/)
-   [wget](https://www.gnu.org/software/wget/)

#### Preferred utilities

-   [Caffeine](http://lightheadsw.com/caffeine/)
-   [Cakebrew](https://www.cakebrew.com/)
-   [Cheatsheet](https://www.mediaatelier.com/CheatSheet/)
-   [Dropbox](http://www.dropbox.com/)
-   [f.lux](https://justgetflux.com/)
-   [Marked 2](http://marked2app.com/)
-   [Nylas N1](https://www.nylas.com/n1)
    -   I should mention I actually prefer
        [Polymail](https://polymail.io/), but N1 is here for those that
        don't yet have access to Polymail.
-   [pianobar](https://6xq.net/pianobar/)
-   [Spectacle](https://www.spectacleapp.com/)
-   [Spotify](https://www.spotify.com/us/)
-   [VLC](http://www.videolan.org/vlc/index.html)

#### Web Browsers

-   [Firefox](https://www.mozilla.org/en-US/firefox/new/)
-   [Google Chrome](https://www.google.com/chrome/)
-   [Opera](http://www.opera.com/)

#### Gaming

-   [Battle.net](https://battle.net)
-   [Steam](http://store.steampowered.com/)

#### Editors

-   [Android
    Studio](http://developer.android.com/tools/studio/index.html)
-   [Atom](https://atom.io/)
-   [Eclipse](https://eclipse.org/) (IDE, Platform, Java)
-   [Emacs](https://www.gnu.org/software/emacs/)
-   [IntelliJ IDEA CE](https://www.jetbrains.com/idea/)
-   [Sublime Text](https://www.sublimetext.com/)
-   [vim](http://www.vim.org/)
-   I actually install MacVim and override the system vim. This is due
    to a handful of plugins I utilize with Vim that basically
    require this.
-   My [.vimrc](https://github.com/schlomok/vimrc) is automatically
    installed by my [.dotfiles](https://github.com/schlomok/dotfiles).
    However, they can be installed separately via my vimrc repository.

#### Developer Tools

-   [colordiff](http://www.colordiff.org/)
-   [DiffMerge](https://sourcegear.com/diffmerge/)
-   [iTerm 2](https://www.iterm2.com/)
-   [Packer](https://www.packer.io/intro/getting-started/setup.html)
-   [pandoc](http://pandoc.org/)
-   [SourceTree](https://www.sourcetreeapp.com/)
-   [tmux](https://tmux.github.io/)
-   [tmuxinator](https://github.com/tmuxinator/tmuxinator)
-   [Vagrant](https://www.vagrantup.com/)
-   [VMware Fusion](https://www.vmware.com/products/fusion)
-   [zsh](http://www.zsh.org/)
    -   I install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
        alongside zsh. My .zshrc is included in my dotfiles.
-   [zsh-completions](https://github.com/zsh-users/zsh-completions)

#### Languages

-   [Go](https://golang.org/)
-   [Java](https://www.java.com)
-   [Python](https://www.python.org/)
-   [Python3](https://www.python.org/)
-   [Ruby](https://www.ruby-lang.org/)
    -   I install Ruby using [RVM](https://rvm.io/) (which is therefore
        installed first).

#### Miscellaneous

-   [CMatrix](http://www.asty.org/cmatrix/)
-   [Cowsay](http://www.nog.net/~tony/warez/)
-   [FIGlet](http://www.figlet.org/)
-   [lolcat](https://github.com/busyloop/lolcat)
    -   Via gem. If you switch ruby versions, you will need
        to re-install.

#### Fonts

-   [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

### Dotfiles

I also automatically install my
[.dotfiles](https://github.com/schlomok/dotfiles). Head over to that
repository to see what's in store there.
