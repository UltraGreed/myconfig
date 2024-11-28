# Using trash instead of rm
alias rm='echo "Use trash-put instead. If you truly intended to use rm, use \rm. "; false'

# Using fast rust implementations of default linux apps
alias grep=rg
alias find=fd

alias fuck='sudo "$BASH" -c "$(history -p !!)"'

