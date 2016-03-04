[[ -f ~/.bashrc ]] && . ~/.bashrc

# include personal bin directory
export PATH="$PATH:$HOME/.local/bin"

####################
# XDG Base Directory

# use env variables, fallback to default locations if unset
DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}

export HISTFILE="$DATA_HOME/bash/history"
export LESSHISTFILE="$DATA_HOME/less/history"
export GNUPGHOME="$CONFIG_HOME/gnupg/"

# cache location of proprietary nvidia driver
export __GL_SHADER_DISK_CACHE_PATH="$CACHE_HOME/nv"
export CUDA_CACHE_PATH="$CACHE_HOME/nv"

######################
# Personal preferences
export EDITOR=nvim

##################
# Debian packaging
export DEBMAIL="m.hovorka@live.de"
export DEBFULLNAME="Markus Hovorka"
