#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.local/share/git/git-prompt.sh

PS1='\[\e[1;37m\]\w$(__git_ps1 " (%s)") [$?]\$ \[\e[0m\]'

alias grep='grep --color=always'
alias ls='ls --color=auto'
alias pdf='zathura --fork'
alias nspawn='systemd-nspawn'
alias ofoam="source ${FOAM_INST_DIR}/OpenFOAM-3.0.1/etc/bashrc"

# nvim aliases
alias vi='nvim'
alias vim='nvim'

# mount assistance (udiskie)
alias ml='findmnt --output LABEL,SOURCE,FSTYPE,SIZE,AVAIL /media/*'
alias m='udiskie-mount'
alias um='udiskie-umount'
