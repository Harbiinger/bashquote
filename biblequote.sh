#!/bin/bash
QUOTE=$(shuf -n 1 $HOME/.config/biblequote/quotes.txt)
COLUMNS=$(tput cols) 
printf "\n%*s\n\n" $(((${#QUOTE}+$COLUMNS)/2)) "✝ $QUOTE ✝"
