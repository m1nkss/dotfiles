# This is a script for install my configuration vim :)


# Copy vimrc file
cp vimrc ~/.vimrc

# Copy folder for config my vim
cp -R vim ~/.vim

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install header for 42
git clone https://github.com/42paris/42header.git
cd 42header
bash set_headers.sh
cd ..
rm 42header
