#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# (Re)install antigen in any case
brew reinstall antigen
brew reinstall asdf

# Update Homebrew recipes
brew update

# Install node and python
asdf plugin-add nodejs
asdf install nodejs latest

asdf plugin-add python
asdf install python latest

# Install Rosetta
sudo softwareupdate --install-rosetta

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew tap homebrew/services
brew bundle --file $HOME/.dotfiles/Brewfile

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Install developer tools
xcode-select --install

# Install PHP extensions with PECL
#pecl -d php_suffix=7.4 install imagick redis xdebug
#pecl -d php_suffix=8.0 install imagick redis xdebug
pecl install imagick redis xdebug

# Install global Composer packages
/opt/homebrew/bin/composer global require laravel/installer laravel/valet beyondcode/expose

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install
$HOME/.composer/vendor/bin/valet trust

# Symlink the Mackup config file and directory to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg
ln -s $HOME/.dotfiles/.mackup $HOME/.mackup

# Set macOS preferences - we will run this last because this will reload the shell
#source $DOTFILES/.macos

echo "Please configure Dropbox and use mackup restore before continuing cloning repositories via clonse.sh"
