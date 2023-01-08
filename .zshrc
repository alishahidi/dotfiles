PATH=$HOME/bin:$HOME/.emacs.d/bin/:/usr/local/bin:$PATH
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias ls="exa --icons"
alias cat="bat"
