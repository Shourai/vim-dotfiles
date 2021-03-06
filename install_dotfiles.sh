cd ~
# cleanup
rm -rf ~/.vim/zgen ~/.vim/bundle

# install zgen
git clone git@github.com:tarjoilija/zgen.git ~/.vim/zgen

# link rc files
ln -sf ~/.vim/vimrc.local ~/.vimrc
ln -sf ~/.vim/zshrc.local ~/.zshrc
ln -sf ~/.vim/tmux.conf.local ~/.tmux.conf
ln -sf ~/.vim/ackrc.local ~/.ackrc
ln -sf ~/.vim/gitconfig.local ~/.gitconfig

# make vi mode work in terminal
cp ~/.vim/inputrc.local ~/.inputrc

# make vi mode work in irb/pry/rails_console
cp ~/.vim/editrc.local ~/.editrc

# install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nvim configuration
ln -sf ~/.vim/nvim_init.vim ~/.config/nvim/init.vim

# change shell to zsh
chsh -s $(which zsh)
