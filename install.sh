#!/bin/bash
mkdir -p $HOME/bin
cp bashquote.sh $HOME/bin/
chmod +x $HOME/bin/bashquote.sh
mkdir -p $HOME/.config/bashquote
cp quotes.txt $HOME/.config/bashquote/
bashrc=$(grep "bashquote" $HOME/.bashrc)
if [ -n $bashrc ];
then
    echo "# bashquote when terminal opened" >> $HOME/.bashrc
    echo "./bin/bashquote.sh" >> $HOME/.bashrc
    . $HOME/.bashrc
fi
echo "Installation completed"
