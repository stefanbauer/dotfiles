# Load dotfiles binaries
export PATH="$DOTFILES/bin:$PATH"

# Load Composer tools
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"
