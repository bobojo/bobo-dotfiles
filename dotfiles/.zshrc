# oh-my-zsh settings
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="josh"
plugins=(zsh-nvm brew git git-flow osx)
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=/$HOME/bin:$HOME/.composer/vendor/bin:/usr/local/bin:$(brew --prefix coreutils)/libexec/gnubin:$PATH
fpath=(/usr/local/share/zsh-completions $fpath)
source .aliases
source .exports
