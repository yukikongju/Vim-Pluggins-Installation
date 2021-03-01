# Vim Plugins Installation

Getting started with vim

## Table of contents

1. [Motivation](#motivation)
2. [Downloading Vim](#download-vim)
3. [Basics Vim](#basics-vim)
4. [Setting up your vimrc file](#setup-vimrc)
5. [Setting up your autocomplete](#autocomplete)
6. [Setting up snippets](#snippets)
7. [Managing dotfiles](#dotfiles)
8. [Todos](#todos)

## Motivation

Why use vim

## Downloading Vim

Follow step at: https://www.vim.org/download.php

## Basic Vim

TLDR: 

- Movements
- Screen
- Buffer

### Setting Up your .vimrc file

Step 1: Install plug-vim for a to make plugins installation simpler

For Unix:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

More information: https://github.com/junegunn/vim-plug

Step 2. Initialize .vimrc file. This is where you will customize your vim

In your home directory, do

```
vim .vimrc
```
Step 3: Edit the .vimrc file

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
Step 4: Install Plugins

In vim, execute:

```
:PlugInstall
```

### More Pluggins

1. PyDiction: http://rkulla.github.io/pydiction/
2. Configuring Vim like VSCode (autocompletion) by Ben Awad:https://www.youtube.com/watch?v=gnupOrSEikQ&t=1095s 
3. Intellident Completion Coc: https://kimpers.com/vim-intelligent-autocompletion/

## Managing Dotfiles

Dotfiles Architecture: http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html

Creating a symbolic link to your new file location:
https://superuser.com/questions/327792/how-to-change-the-default-location-of-vimrc-to-inside-vim

## Todos

- [ ] Autocomplete for python/java
- [ ] Snippets for python/java
- [ ] Debugger

## Python modules installation

`` pip install <module> --user ``
