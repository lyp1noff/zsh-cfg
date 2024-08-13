#!/bin/bash

# curl -s https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/setup.sh | bash

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

curl -o ~/.zshrc https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/zsh/.zshrc
curl -o ~/.oh-my-zsh/custom/themes/lyp1noff.zsh-theme https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/zsh/.oh-my-zsh/custom/themes/lyp1noff.zsh-theme

curl -o ~/.vimrc https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/zsh/.vimrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/zsh/.tmux.conf
