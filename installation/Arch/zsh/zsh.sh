sudo pacman -S --noconfirm zsh git
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
chsh -s $(which zsh)
