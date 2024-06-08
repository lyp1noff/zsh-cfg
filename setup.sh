#!/bin/bash

# curl -s https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/setup.sh | bash

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

wget https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/zsh/.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/zsh/.oh-my-zsh/custom/themes/lyp1noff.zsh-theme -O ~/.oh-my-zsh/custom/themes/lyp1noff.zsh-theme
