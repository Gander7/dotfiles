#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#
# Aliases
#
## Alias Functions
td(){
	task done $1 && task list
}
ta(){
	task add $@ && task list
}
## Tasks
alias tl='task list'
