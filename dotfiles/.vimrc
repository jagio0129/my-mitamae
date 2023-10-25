if filereadable(expand('$HOME/.vimrc.neobundle')) " ファイルが読み込み可能かチェック
  source $HOME/.vimrc.neobundle " .vimrcファイル読み込み

  if filereadable(expand('$HOME/.vimrc.plugin'))
    source $HOME/.vimrc.plugin
  endif
endif

if filereadable(expand('$HOME/.vimrc.basic'))
  source $HOME/.vimrc.basic
endif
