source $(brew --prefix)/share/antigen/antigen.zsh

export DOTFILES=$HOME/.dotfiles
export LANG=en_US.UTF-8
export LC_ALL=${LANG}
export EDITOR='subl -w'

CASE_SENSITIVE=true
HIST_STAMPS="%d/%m/%y %T"
DISABLE_AUTO_TITLE=true

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
    brew
    brew-cask
    colored-man-pages
    colorize
    command-not-found
    composer
    docker
    docker-compose
    fzf
    gem
    git
    git-flow-avh
    httpie
    sudo
    rsync
    yarn
    agkozak/zsh-z
    jasonmccreary/git-trim@main
    jessarcher/zsh-artisan
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-completions src
EOBUNDLES

# antigen theme robbyrussell
# antigen theme agnoster
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
antigen apply

ZSH_CUSTOM=$DOTFILES

SPACESHIP_CHAR_SYMBOL=""
SPACESHIP_CHAR_PREFIX=""
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_TIME_SHOW=false
SPACESHIP_PACKAGE_SHOW=true
SPACESHIP_NODE_SHOW=true
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_PHP_SHOW=true
SPACESHIP_DOCKER_SHOW=false

source $DOTFILES/path.zsh
source $DOTFILES/aliases.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /opt/homebrew/opt/asdf/libexec/asdf.sh
