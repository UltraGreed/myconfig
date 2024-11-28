venv () {
    if [[ "$VIRTUAL_ENV" != "" ]]; then
        echo "Virtual environment already active - nothing to do."
        return
    fi

    local VENV_PATH=$(dnif ".venv")

    if [ ! -z "$VENV_PATH" ]
    then 
        source "$VENV_PATH/.venv/bin/activate"
        echo "Activated virtual environment at $VENV_PATH/.venv"
    else
        echo "Virtual environment .venv directory not found"
    fi
}

export -f venv
