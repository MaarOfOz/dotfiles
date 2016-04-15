# go env
export GOPATH=$HOME/go

export PATH=$HOME/bin/:$GOPATH/bin:$PATH

export EDITOR="/usr/bin/vim"
export HISTCONTROL=ignoredups

# ssh-agent
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
	/usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
	chmod 600 "${SSH_ENV}"
	. "${SSH_ENV}" > /dev/null
	/usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
	. "${SSH_ENV}" > /dev/null
	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
		start_agent;
	}
else
	start_agent;
fi

# gpg-agent
GPG_ENV="$HOME/.gnupg/gpg-agent.env"
if [[ -e "$GPG_ENV" ]] && kill -0 $(grep GPG_AGENT_INFO "$GPG_ENV" | cut -d: -f 2) 2>/dev/null; then
	eval "$(cat "$GPG_ENV")"
else
	eval "$(gpg-agent --daemon --write-env-file "$GPG_ENV")"
fi
export GPG_AGENT_INFO  # the env file does not contain the export statement

