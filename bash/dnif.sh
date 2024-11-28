dnif () {
    DIR=$(pwd)
    while [ ! -z "$DIR" ] && [ ! -e "$DIR/$1" ]; do
        DIR="${DIR%\/*}"
    done
    echo "$DIR"
}
export -f dnif
