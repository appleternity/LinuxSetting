#############
# nvim
# 
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim
mkdir ~/.config
mkdir ~/.config/nvim
mkdir ~/.config/nvim/colors
cp .vimrc ~/.config/nvim/init.vim
cp monokai.vim ~/.config/nvim/colors/
nvim +PluginInstall +qall

# >> install to user
mkdir ~/.local
mkdir ~/.local/bin
cp nvim ~/.local/bin
echo 'alias vim=nvim' >> ~/.zshrc
