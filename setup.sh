#!/usr/bin/env bash

echo "Creating symlinks..."

if ! [[ -L $HOME/.vimrc ]]; then
  ln -s `pwd`/vimrc $HOME/.vimrc
fi

if ! [[ -L $HOME/.vim ]]; then
  ln -s `pwd` $HOME/.vim || true
fi

echo

if ! [[ -d `pwd`/bundle/vundle/.git  ]]; then
  echo "Cloning Vundle..."
  git clone https://github.com/gmarik/vundle.git `pwd`/bundle/vundle
else
  echo "Skipping Vundle clone"
fi

vim +BundleInstall +qall


# liquid fix for Locomotive *.liquid.haml files:
if ! grep -qe "liquid\.haml" "$HOME/.vim/bundle/vim-liquid/ftdetect/liquid.vim"; then
  echo "au BufNewFile,BufRead *.liquid.haml     set ft=liquid" >> "$HOME/.vim/bundle/vim-liquid/ftdetect/liquid.vim"
  echo "au BufNewFile,BufRead *.liquid.erb      set ft=liquid" >> "$HOME/.vim/bundle/vim-liquid/ftdetect/liquid.vim"
fi
