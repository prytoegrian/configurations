# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export GOPATH=$HOME/Logiciels/go
export PATH=$PATH:$GOPATH/bin

parse_git_branch() {
    return
    #git branch 2> /dev/null
    #if [$? -eq 0 ]
    #then
    #    return 0
    #fi

    #return 1
#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# GREEN="\[$(tput setaf 2)\]"
GREEN="\[\033[00;32m\]"
RED="\[\033[01;31m\]"
PURPLE="\[\033[00;35m\]"
RESET="$(tput sgr0)"

# Prompt, thanks to https://superuser.com/questions/202212/how-can-i-display-the-absolute-path-in-bash-prompt
PS1="\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\u@\h\${RESET}:\w${PURPLE}$(parse_git_branch)${RESET}\n\$ "
# Improve PATH

# Aliases
alias ll="ls -lah"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias g="git"
# history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
