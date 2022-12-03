mkdir -p $HOME/bin
cp biblequote.sh $HOME/bin/
chmod +x $HOME/bin/biblequote.sh
mkdir -p $HOME/.config/biblequote
cp quotes.txt $HOME/.config/biblequote/
bashrc=$(grep "biblequote" $HOME/.bashrc)
if [ -n $bashrc ];
then
    echo "# biblequote when terminal opened" >> $HOME/.bashrc
    echo "./bin/biblequote.sh" >> $HOME/.bashrc
    . $HOME/.bashrc
fi
echo "Installation completed"
