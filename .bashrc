################################
# Aliases

# Listing
alias ls='ls --color=auto -ACF'
alias ll='ls --color=auto -laF'
alias la='ls -a'

# Navigation
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Directories
alias mkdir='mkdir -pv'

# Networking
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
alias ipt='sudo /sbin/iptables'
alias wget='wget -c'

# System
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
alias df='df -H'
alias du='du -ch'

# Task warrior
alias t="task"
alias tp='_tp() { task pro:$1; }; _tp'
alias tap='_tadd() { task add pro:$1 "${@:2}"; }; _tadd'
alias tha="task add pro:hz"
alias td="task done"
alias tm="task mod"
alias tnsa="task add pro:ns"
alias ta="task annotate"

# Sudo
# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
	alias reboot='sudo reboot'
	alias get='sudo apt-get install'
	alias update='sudo apt-get update'
	alias upgrade='sudo apt-get upgrade'
fi

#################################
# Exports

# set Vim as my default editor
export EDITOR=vim

# History
export HISTFILESIZE=10000
export HISTSIZE=500
export HISTCONTROL=erasedups:ignoredups:ignorespace # Ignore duplicate lines and spaces

#################################
# Configuration

# Append to history rather than overwrite on new terminal
shopt -s histappend
PROMPT_COMMAND='history -a'

# Ignore case on auto-completion
# Note: bind used instead of sticking these in .inputrc
if [[ $iatest > 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab
if [[ $iatest > 0 ]]; then bind "set show-all-if-ambiguous On"; fi

# Change prompt
parse_git_branch() {
	     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
     }
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Update PATH
PATH="/home/tony/.npm-global/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
