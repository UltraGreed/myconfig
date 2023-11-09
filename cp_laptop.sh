read -p $'Replace conky laptop config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm conky_laptop/*
    cp ~/.config/conky/* conky_laptop
fi

./cp_common.sh
