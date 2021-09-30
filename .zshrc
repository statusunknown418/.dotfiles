export PATH=$PATH:/Users/myuser/bin
export PATH=$PATH:/Users/alvaro-h4ck1tonsh/.npm-global/bin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/alvaro-h4ck1tonsh/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /Users/alvaro-h4ck1tonsh/.zsh/completion.zsh
# Load completion config
source $HOME/.zsh/completion.zsh

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
 eval "$(starship init zsh)"
alias ls='ls -G'
source /Users/alvaro-h4ck1tonsh/.zsh/key-bindings.zsh
source $HOME/.zsh/aliases.zsh
alias ls='ls -G'                              # colorize `ls` output
alias zshreload='source ~/.zshrc'             # reload ZSH
alias shtop='sudo htop'                       # run `htop` with root rights
alias grep='grep --color=auto'                # colorize `grep` output
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias less='less -R'
alias g='git'
alias ll='ls -la'			      # Show everything
alias rm='rm -i'                              # confirm removal
alias cp='cp -i'                              # confirm copy
alias mv='mv -i'                              # confirm move
alias cal='gcal --starting-day=1'             # print simple calendar for current month
alias weather='curl v2.wttr.in'               # print weather for current location (https://github.com/chubin/wttr.in)


export PATH=~/dev-utilities:$PATH
export DENO_INSTALL="/Users/alvaro-h4ck1tonsh/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
