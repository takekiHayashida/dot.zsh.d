# プロンプトのカラー表示を有効
autoload -U colors
colors
case ${OSTYPE} in
  darwin*)
    # for Mac
	export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
	;;
  *)
    # other
	;;
esac

eval `dircolors ~/.dir_colors -b`
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

