#############
# nvim
# 
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim
mkdir -p ~/.config
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/colors
cp .vimrc ~/.config/nvim/init.vim
cp monokai.vim ~/.config/nvim/colors/
nvim +PluginInstall +qall

# >> install to user
#mkdir -p ~/.local
#mkdir -p ~/.local/bin
#cp nvim ~/.local/bin
#echo 'alias vim=nvim' >> ~/.zshrc

# >> if FUSE doesn't exist
./nvim --appimage-extract
mkdir -p ~/.local
mkdir -p ~/.local/bin
mv squashfs-root ~/.local/nvim
ln -s ~/.local/nvim/AppRun ~/.local/bin/nvim
echo 'alias vim=nvim' >> ~/.zshrc
