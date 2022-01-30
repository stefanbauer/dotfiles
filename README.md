## Introduction

This repository helps me reinstall my Mac with almost no effort. My development environment is set up automatically, my favorite apps are installed, and many of my favorite macOS settings are set automatically.

It's a fork of [Dries Vints' .dotfiles repository](https://github.com/driesvints/dotfiles). I had a similar construct earlier, but wanted to switch to this structure to make it easier to share changes with other developers.

Feel free to explore, learn and copy parts for your own dotfiles. Enjoy!

If you are interested in some more resources, check out this:

📖 - [Read the blog post from Dries Vints](https://driesvints.com/blog/getting-started-with-dotfiles)  
📺 - [Watch a screencast on Laracasts](https://laracasts.com/series/guest-spotlight/episodes/1)  
💡 - [Learn how to build your own dotfiles](https://github.com/driesvints/dotfiles#your-own-dotfiles)

## What is different to the original one?

### General

**If you start from scratch**, there is no need to install `oh-my-zsh`. Just call `fresh.sh` and you're done. `oh-my-zsh` will be installed via antigen. This `fresh.sh` installs `brew` and `antigen` in one step and continues with the rest.

- [Antigen](https://github.com/zsh-users/antigen) as plugin manager
- Prepare `/usr/local/bin` for custom binaries
- Add some [examples](https://github.com/stefanbauer/dotfiles/tree/main/examples) of my personal configuration files
- Add some more useful plugins via Antigen

### Mackup

- Use a custom `.mackup` configuration folder
  - Backup all my SSH keys
  - Backup `global_gitignore` and dayjob `.gitconfig`
  - Backup my `zsh_history`
- Exclude [Mackup](https://github.com/lra/mackup) from Mackup

### Repositories

- Add a list to clone all repositories instead of adding them manually

## Thanks to...

[Dries Vints](https://twitter.com/driesvints) for putting so much effort in the fork. Of course also thanks to all the people that inspired him so much creating this repository.
