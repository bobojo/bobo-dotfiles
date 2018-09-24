# oh-my-zsh settings
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="josh"
plugins=(zsh-nvm git git-flow osx)
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=/$HOME/bin:$HOME/.composer/vendor/bin:/usr/local/bin:$(brew --prefix php@7.1)/bin:$PATH
fpath=(/usr/local/share/zsh-completions $fpath)
source ~/.aliases
source ~/.exports

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/jbobo'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET
