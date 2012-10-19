# git env
export PATH=/usr/local/git/bin:$PATH
export MANPATH=/usr/local/git/share/man:`manpath -q`
export GIT_SSL_NO_VERIFY=true
alias g="git"

fpath=($ZSH_EXT_BASE/plugins/git $fpath)

