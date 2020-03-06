# Plugins
source ~/dotfiles/zsh_plugins/git-prompt/zshrc.sh
PROMPT=$'%F{cyan}%n%f@%F{red}%m%f %b$(git_super_status)\n%F{blue}%~%f %# '

# General config
setopt autocd
bindkey -e
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit

# Aliases
alias ls="ls -Gph"
alias l="ls -l"
alias la="ls -lA"
alias vi=vim
alias g=git
alias feh="feh -. -B black"
alias emacs="TERM=xterm emacs -nw"

export PATH=.local_bin:$HOME/bin:/usr/local/bin:$PATH

# Enable RVM if installed
if [ -e ~/.rvm/scripts/rvm ]
then
    source ~/.rvm/scripts/rvm
fi

## Vim!
# ...but prefer macvim on OSX
if [ -e "$(which mvim)" ]
then
    alias vim="mvim -v"
    export EDITOR="$(which mvim) -v"
elif [ -e "$(which vim)" ]
then
    export EDITOR="$(which vim)"
fi

# Virtualenvwrapper (if installed)
if [ -e /usr/bin/virtualenvwrapper.sh ]
then
    export WORKON_HOME=~/virtualenv
    source /usr/bin/virtualenvwrapper.sh
fi
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Use the haskell implementation if available
if [ -e ~/dotfiles/zsh_plugins/git-prompt/src/.bin/gitstatus ]
then
    export GIT_PROMPT_EXECUTABLE="haskell"
fi

# Add custom scripts to path
export PATH=~/dotfiles/bin/zsh:$PATH

if [ -e ~/dotfiles/zsh/local.zsh ]
then
    source ~/dotfiles/zsh/local.zsh
fi

if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
    export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'
fi
