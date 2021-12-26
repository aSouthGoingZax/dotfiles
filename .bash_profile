#
# ~/.bash_profile
#

# use this file if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# include scripts folder in PATH variable
export PATH="$PATH:$HOME/scripts"

# ~/ clear out
export LESSHISTFILE=-
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export GOPATH="$XDG_DATA_HOME/go"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# other shit
export SUDO_ASKPASS="$HOME/scripts/sudo-prompt"
export SSH_ASKPASS="$HOME/scripts/ssh-passphrase"
export QT_QPA_PLATFORMTHEME="qt5ct"
#export _JAVA_AWT_WM_NONREPARENTING=1    # Fix for Java applications in dwm

# set default programs
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export STERM="st"
export BROWSER="brave"

[ -f "$XDG_CONFIG_HOME/lf/lf-icons" ] && source "$XDG_CONFIG_HOME/lf/lf-icons"

# start display server
if [ "$(tty)" = "/dev/tty1" ]; then
	exec startx "$XINITRC"
fi
