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
    rm ranger/*
    cp ~/.config/ranger/* ranger
fi

read -p $'Replace alacritty config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm alacritty/*
    cp ~/.config/alacritty/alacritty.yml alacritty
fi


read -p $'Replace nvim config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm -r nvim/*
    cp -r ~/.config/nvim/lua/custom/* nvim
fi


