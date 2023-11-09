read -p $'Replace conky pc config?\n[Y/y] for yes anything else for no: ' -n 1 -r
echo  
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm conky_pc/*
    cp ~/.config/conky/* conky_pc
fi

./cp_common.sh
