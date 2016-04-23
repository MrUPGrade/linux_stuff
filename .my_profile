function set_prompt()
{
	local _BOLD=$(tput bold)
	#_BOLD=''

	local _CLEAR=$(tput sgr0)
	
	local _USER_COLOR=2
	if [ "0" == "$(id -u)" ]
	then
		_USER_COLOR=1
	fi

	local _USER=${_BOLD}$(tput setaf ${_USER_COLOR})\\u${_CLEAR}
	local _HOST=${_BOLD}$(tput setaf 3)\\h${_CLEAR}
	local _PATH=${_BOLD}$(tput setaf 4)\\w${_CLEAR}
	local _TIME=${_BOLD}$(tput setaf 6)\\t${_CLEAR}


	#_GIT=''
	# Git prompt have to be included in the environment to use __git_ps1.
	# In some distributions this is included in global configs.
	. /usr/share/git-core/contrib/completion/git-prompt.sh 
	_GIT=${_BOLD}$(tput setaf 5)$(__git_ps1 " (%s)")

	PS1="[${_TIME}] ${_USER}@${_HOST} ${_PATH}${_GIT} ${_CLEAR}\n# "
}

set_prompt

if [ -d ~/bin ]
then
	PATH=~/bin:${PATH}
fi

# vim: syn=sh
