# Shortcuts
alias -g C=' | cat '
alias -g G=' | grep '
alias -g J=' | jq -CS '
alias -g L=' | less '
alias -g M=' | subl '
alias -g S=' | sed '
alias -g U=' | uniq '
alias -g X=' | xargs '

alias cat='bat -P'
alias la='ls -lsAi'
alias ll="$(brew --prefix)/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias copy='rsync -avv --stats --human-readable --itemize-changes --progress --partial'

alias key='cat ~/.ssh/id_ed25519.pub | pbcopy'
alias rand='head -c 128 /dev/urandom | openssl enc -base64'
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'

# Valet / Laravel
alias php="valet php"
alias composer="valet composer"
alias a="php artisan"
alias mf="php artisan migrate:fresh"
alias mfs="php artisan migrate:fresh --seed"

# Homebrew
alias services="brew services"
alias services-restart="brew services list G started | cut -d" " -f1 | xargs -I{} brew services restart {}"
