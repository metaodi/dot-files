# basic code from http://www.developerzen.com/2011/01/10/show-the-current-git-branch-in-your-command-prompt/


# Parse current git branch if available
function parse_git_branch () {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
PS1="$GREEN\u@`uname -n | cut -f1 -d.`$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR> "

tig()
{
  if [[ $# -eq 0 ]] || [[ $# -gt 0 && "$1" == "st" ]]  ; then
     shift
     /usr/bin/tig status "$@"
  else
     /usr/bin/tig "$@"
  fi
}

# enable vi mode
set -o vi

xcape -e 'Shift_R=Escape'
