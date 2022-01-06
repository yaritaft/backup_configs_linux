# And paste this
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u:\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# To quickly create python3 venv
alias makepyvenv='python3 -m virtualenv -p python3 venv; source venv/bin/activate'

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

