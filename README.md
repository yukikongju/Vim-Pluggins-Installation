## Initializing vimrc file 

### 1. Install Vim: https://www.vim.org/download.php

### 2. Install plug-vim for a to make plugins installation simpler

For Unix:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

More information: https://github.com/junegunn/vim-plug

### 3. Initialize .vimrc file. This is where you will customize your vim

In your home directory, do

```
vim .vimrc
```
### 4. Edit the .vimrc file

Add Plugin inside plug#begin() and plug#end()

```
 plug#begin() 

	 Plug 'scrooloose/nerdtree' " show folders on the side
	 Plug 'altercation/vim-colors-solarized' " colorscheme for text
	 Plug 'frazrepo/vim-rainbow' " make parenthesis and braket easier to read
	 Plug 'airblade/vim-gitgutter' " show modified lines in git
	 Plug 'itchyny/lightline.vim' " colorscheme for vim modes
	 Plug 'scrooloose/nerdcommenter' " Change indentation behavior
	 Plug 'tpope/vim-fugitive' " Git Command
	 Plug 'neoclide/coc.nvim'

 plug#end()
```
### 5. Install Plugins

In vim, execute:

```
:PlugInstall
```

# Installing Some Pluggins

1. PyDiction: http://rkulla.github.io/pydiction/
2. Configuring Vim like VSCode (autocompletion) by Ben Awad:https://www.youtube.com/watch?v=gnupOrSEikQ&t=1095s 
3. Intellident Completion Coc: https://kimpers.com/vim-intelligent-autocompletion/

## Managing Dotfiles

Dotfiles Architecture: http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html

Creating a symbolic link to your new file location:
https://superuser.com/questions/327792/how-to-change-the-default-location-of-vimrc-to-inside-vim


