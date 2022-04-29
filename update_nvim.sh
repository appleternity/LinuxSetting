#############
# nvim
# 
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim

# >> if FUSE doesn't exist
./nvim --appimage-extract
rm -rf ~/.local/nvim
mv squashfs-root ~/.local/nvim
#ln -s ~/.local/nvim/AppRun ~/.local/bin/nvim

# update vim init and install all new plugins
cp .vimrc ~/.config/nvim/init.vim
nvim +PluginInstall +qall
