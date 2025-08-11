#!/usr/bin/bash
######################################################################
## File Name: .bashrc
## Author(s): Arnob Karmokar (contact@arnob.me)
## Quick Start:	Source in your ~/.bashrc for custom alias and procs
#######################################################################

echo "(INFO) Reading AK.bashrc"

########## User Defined Aliases ##########

alias ll='pwd && ls -lAhgrt'
alias tclsh='rlwrap tclsh' # requires rlwrap package 

# Navigation

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

# Bookmarks
alias myd="cd ~/repos/"

# GIT Aliases

alias gs="git status"
alias ga="git add"
alias gaa="git add ." # Adds all modified file to staging area
alias gl="git log --pretty --oneline --graph" # Displays colorful oneline git commit log with tree
alias gc="git commit"
alias gd="git diff"

# Other Aliases

alias cl="clear"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ftree="find . -type d -name .git -prune -o -print | sort -d | sed -e 's;[^/]*/;|____;g;s;____|; |;g'" # Prints directory as tree


########## Other Settings ##########

# Autocorrect typos in path names when using `cd`.
shopt -s cdspell

########## Custom Terminal Prompt ##########
PS1='\[\e[93;1m\]\w\[\e[22m\]$(git branch 2> /dev/null | sed -e '"'"'/^[^*]/d'"'"' -e '"'"'s/* \(.*\)/(\1)/'"'"' -e '"'"'s/^/ /'"'"') \[\e[0;1m\]\$ \[\e[0m\]'

########## Change terminal title ##########
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

########## GNU make available target autofill ##########

#complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' ?akefile *.mak *.mk -h | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make

# complete -W "\`grep '^include' ?akefile -h | sed 's/include //' |xargs grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' ?akefile -h -s | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make

########## MKDIR AND CD INTO NEW DIR ##########
mkcd() {
	if [ $# != 1 ]; then
		echo "Usage: mkcd <dir>"
	else
		mkdir -p $1 && cd $1
	fi
}

########## git commands autocomplete ##########

# Download the git autocomplete bash script if it doesn't exist.
# if [ ! -f ~/.git-completion.bash ]; then
# 	echo "(INFO) Downloading GIT Autocomplete Script"
# 	wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
# fi

# source ~/.git-completion.bash
