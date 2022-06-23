PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source /home/ali/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=/home/ali/.local/bin:/home/ali/.local/lib/python3.9/site-packages/*:$PATH
export FZF_DEFAULT_COMMAND='fdfind --type f'
export FZF_DEFAULT_OPTS='--layout=reverse --inline-info --height=80%'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias ls="exa --icons"
clear
figlet "#: Ali;" | lolcat

