#!/bin/bash
mkdir -p $HOME/bin
cp bashquote $HOME/bin/
chmod +x $HOME/bin/bashquote
mkdir -p $HOME/.config/bashquote
cp quotes/* $HOME/.config/bashquote/
echo "Installation completed"
