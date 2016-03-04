#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.local/share/git/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE="true"
GIT_PS1_SHOWSTASHSTATE="true"
GIT_PS1_SHOWUNTRACKEDFILES="true"

PS1='\[\e[1;37m\]\w$(__git_ps1 " (%s)") [$?]\$ \[\e[0m\]'

alias ls='ls --color=auto'
alias pdf='zathura --fork'

# nvim aliases
alias vi='nvim'
alias vim='nvim'

# mount assistance (udiskie)
alias ml='findmnt --output LABEL,SOURCE,FSTYPE,SIZE,AVAIL /media/*'
alias m='udiskie-mount'
alias um='udiskie-umount'
