if [ -d $HOME/.rbenv ]; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init - zsh)"

	# auto rehash
	function gem(){
	    $HOME/.rbenv/shims/gem $*
	    if [ "$1" = "install" ] || [ "$1" = "i" ] || [ "$1" = "uninstall" ] || [ "$1" = "uni" ]
	    then
	        rbenv rehash
	        rehash
	    fi
	}
fi

