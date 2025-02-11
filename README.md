# dotfiles

Welcome to my dotfiles repository! Here you'll find my personal configuration files for various tools and applications. These files are intended to be placed in your **home directory** (`~`).

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Plugin Management](#plugin-management)
- [Contributing](#contributing)

## Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/m1nkss/dotfiles.git

2. **Navigate to the cloned directory:**

cd dotfiles

3. **Copy the configuration files to your home directory:**

cp .vimrc ~/

## Usage

To use these configuration files, simply follow the installation steps above. The .vimrc file will configure Vim according to my personal preferences. Feel free to customize it further to suit your needs.
Plugin Management

There are several plugin managers available for Vim. Personally, I use vim-plug.

To install plugins:

    Ensure vim-plug is installed:

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Open Vim and run the following command:

:PlugInstall

## Contributing

Feel free to fork this repository and submit pull requests or open issues if you have any suggestions or improvements.

    Thanks to vim-plug for making plugin management in Vim a breeze.

Don't forget to star the repo if you find it useful! ⭐
