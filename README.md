# Sweet MacOS dotfiles config

This is a personal config that's working fine for me, it's available to anyone who wants to clone it.

## Prerequisites

1. Zsh installed
2. A **patched Nerd Font** (I personally use _Blex Mono Nerd Font_)
3. Starship prompt - see the docs [here](https://starship.rs)
4. Want to have fun and extra functionality for your terminal

## Install

1. Just copy this ->
   `cd $HOME && git clone https://github.com/AlvaroAquijeDiaz/.dotfiles.git`

2. Run this command ->

```

source ~/.zshrc

```

3. Then copy this to the bottom of your `~/.zshrc`

```
# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

# Initialize Starship
eval "$(starship init zsh)"
```
