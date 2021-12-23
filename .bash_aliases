alias power="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -i 'state\|percentage'"
alias shut="shutdown now"

alias zathura="zathura --fork"
alias r=". ranger"
alias ip="ip -c"

alias sl=ls
alias uni="cd ~/UNI/WS_21-Island/"
alias python=python3

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'

export PATH=$PATH:~/.local/bin

export VISUAL=nvim
export EDITOR=$VISUAL

