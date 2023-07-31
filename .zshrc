PATH=$HOME/bin:$HOME/.emacs.d/bin/:/usr/local/bin:$HOME/.local/bin:$PATH
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias ls="exa --icons"
alias go="cd"
alias wr="vim"
alias idea="nohup ~/Applications/idea/bin/idea.sh &"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
