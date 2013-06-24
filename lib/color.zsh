# プロンプトのカラー表示を有効
autoload -U colors
colors
case ${OSTYPE} in
  darwin*)
    # for Mac
	;;
  *)
    # other
	eval `dircolors ~/.dir_colors -b`
	;;
esac

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

