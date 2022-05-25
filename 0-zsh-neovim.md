# zsh

# 1. Install some tools
```sh
brew install zsh
sudo curl -L http://install.ohmyz.sh | sh
chsh -s $(which zsh)

brew install tree nvim ranger

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# .zshrc file
# add `source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh`
# edit `plugins=(git zsh-autosuggestions)`


cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ~/.config && mkdir nvim
cd nvim && touch init.vim

# follow: [link](https://viblo.asia/p/ide-hoa-neovim-phan-1-cai-dat-plugins-va-setup-neovim-co-ban-OeVKBOBdZkW)

```