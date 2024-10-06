#!/bin/bash

mkdir ~/.zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

curl -o ~/.zshrc https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/server/.zshrc
curl -o ~/.p10k.zsh https://raw.githubusercontent.com/lyp1noff/zsh-cfg/main/server/.p10k.zsh