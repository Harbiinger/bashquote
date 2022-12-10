#!/bin/bash
cp bashquote $HOME/.local/bin/
chmod +x $HOME/.local/bin/bashquote
mkdir -p $HOME/.config/bashquote
cp quotes/* $HOME/.config/bashquote/
echo "Installation completed"
