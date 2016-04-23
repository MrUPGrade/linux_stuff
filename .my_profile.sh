_BOLD=$(tput bold)
#_BOLD=''

_CLEAR=$(tput sgr0)
	
_USER_COLOR=2
if [ "0" == "$(id -u)" ]
then
	_USER_COLOR=1
fi

_USER=${_BOLD}$(tput setaf ${_USER_COLOR})\\u${_CLEAR}
_HOST=${_BOLD}$(tput setaf 3)\\h${_CLEAR}
_PATH=${_BOLD}$(tput setaf 4)\\w${_CLEAR}
_TIME=${_BOLD}$(tput setaf 6)\\t${_CLEAR}


#_GIT=''
# Git prompt have to be included in the environment to use __git_ps1.
# In some distributions this is included in global configs.
. /usr/share/git-core/contrib/completion/git-prompt.sh 
_GIT_COLOR=${_BOLD}$(tput setaf 5)

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="[${_TIME}] ${_USER}@${_HOST} ${_PATH}${_GIT_COLOR}\$(__git_ps1) ${_CLEAR}\n# "

if [ -d ~/bin ]
then
	PATH=~/bin:${PATH}
fi

# vim: syn=sh
