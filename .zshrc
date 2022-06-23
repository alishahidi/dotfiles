PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$HOME/.local/bin:$HOME/.local/lib/python3.9/site-packages/*:$PATH
alias ls="exa --icons"
alias emacs="emacsclient -c -a 'emacs'"
clear
figlet "#: $USER;" | lolcat

