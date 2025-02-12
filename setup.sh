#!/bin/bash

# Create dir to contain config
mkdir ~/.config

mkdir ~/.config/zsh
mkdir ~/.config/nvim

# Run stow for each package
stow nvim
stow zsh
stow starship
