# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"

# Aliases
alias vi=vim
alias g=git
alias feh="feh -. -B black"
alias emacs="TERM=xterm emacs -nw"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

# User configuration

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
