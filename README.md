# Installation

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
 
      Plug 'airblade/vim-gitgutter'
      Plug 'editorconfig/editorconfig-vim'
      Plug 'itchyny/lightline.vim'
      Plug 'junegunn/fzf'
      Plug 'junegunn/fzf.vim'
      Plug 'mattn/emmet-vim'
      Plug 'scrooloose/nerdtree'
      Plug 'terryma/vim-multiple-cursors'
      Plug 'tpope/vim-eunuch'
      Plug 'tpope/vim-surround'
      Plug 'w0rp/ale'
      Plug 'tpope/vim-fugitive'
      Plug 'scrooloose/syntastic'
      Plug 'vim-airline/vim-airline'
      Plug 'scrooloose/nerdcommenter'
      Plug 'altercation/vim-colors-solarized'
      Plug 'majutsushi/tagbar'
 
 plug#end()
```
### 5. Install Plugins

In vim, execute:

```
:PlugInstall
```


