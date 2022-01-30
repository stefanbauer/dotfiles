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

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $DOTFILES/Brewfile

# Prepare local binaries directory
mkdir -p /usr/local/bin
sudo chown -R $(whoami) /usr/local/bin

# Install PHP extensions with PECL
pecl install imagick redis xdebug

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet beyondcode/expose

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install
$HOME/.composer/vendor/bin/valet trust

# Create a Sites directory
mkdir $HOME/Sites

# Create necessary sites subdirectories
mkdir $HOME/Sites/frischepost

# Clone Github repositories
$DOTFILES/clone.sh

# Symlink the Mackup config file and directory to the home directory
ln -s $DOTFILES/.mackup.cfg $HOME/.mackup.cfg
ln -s $DOTFILES/.mackup $HOME/.mackup

# Set macOS preferences - we will run this last because this will reload the shell
source $DOTFILES/.macos
