# Plugins
source ~/dotfiles/zsh/git-prompt/zshrc.sh
PROMPT=$'%F{cyan}%n%f@%F{red}%m%f %b$(git_super_status)\n%F{blue}%~%f %# '

# General config
setopt autocd
bindkey -e

# Aliases
alias ls="ls -Gp"
alias l="ls -l"
alias la="ls -la"
alias vi=vim
alias g=git
alias feh="feh -. -B black"
alias emacs="TERM=xterm emacs -nw"

export PATH=$HOME/bin:/usr/local/bin:$PATH

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
if [ -e ~/dotfiles/zsh/git-prompt/dist/build/gitstatus/gitstatus ]
then
    export GIT_PROMPT_EXECUTABLE="haskell"
fi
