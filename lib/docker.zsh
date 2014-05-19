alias d="docker"
alias di="docker images"
alias db="docker build"
alias dpa="docker ps -a"
alias dps="docker ps"
drma() { docker rm $(docker ps -a -q); }
