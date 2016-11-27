# .bashrc

#colors

#Colored ManPages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# -----/ aliases /-----

alias ls='ls'
alias lsd='ls -dlf */'  # List directories
alias ll='ls -l'        # Detailed list
alias l='ls -laF'       # Detailed List
alias cd..='cd ..'      # Parent directory

# color grep
export GREP_COLOR=32
alias grep='grep --color'
alias egrep='egrep --color'



# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#docker useful shorcut 
alias docker_clean='sudo docker rm $(sudo docker ps --filter=status=exited --filter=status=created -q)'

#node6
export PATH=$PATH:/home/cesar/Documentos/bin/node-v6/bin

function toby {
  sudo docker exec -i -t $1 bash 
}

function toby_run {
  sudo docker exec -i -t $1 $2 
}

function toby_stop {
  sudo docker stop $1 
}

function toby_isolate {
  sudo docker rm $1 
  sudo docker run -i -d -v $(pwd):/usr/src/app --name $1 amp bash
}

function toby_ls {
  sudo docker ps
}

function toby_inspect {
  sudo docker inspect $1
}

