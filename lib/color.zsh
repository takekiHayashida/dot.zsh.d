# プロンプトのカラー表示を有効
autoload -U colors
colors
case ${OSTYPE} in
  darwin*)
    # for Mac
	export PATH="$(brew --prefix coreutils)/bin:$PATH"
	eval `gdircolors ~/.dir_colors -b`
	;;
  *)
    # other
	eval `dircolors ~/.dir_colors -b`
	;;
esac

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

