read -p $'Replace openbox config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm openbox/*
    cp ~/.config/openbox/menu.xml openbox
    cp ~/.config/openbox/rc.xml openbox/rc_pc.xml
fi

read -p $'Replace ranger config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm -r ranger/*
    cp -r ~/.config/ranger/* ranger
fi

read -p $'Replace alacritty config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm alacritty/*
    cp ~/.config/alacritty/alacritty.toml alacritty
fi


read -p $'Replace nvim config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm -r nvim/*
    cp -r ~/.config/nvim/* nvim
fi


read -p $'Replace tmux config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm -r tmux/*
    cp -r ~/.config/tmux/tmux.conf tmux
fi

read -p $'Replace bash config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm -r bash/*
    cp -r ~/.local/bash/* bash
fi
