HISTSIZE=1000
HISTFILESIZE=2000

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# bash-completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# MacOSのデフォルトシェルのメッセージを非表示に
export BASH_SILENCE_DEPRECATION_WARNING=1

# プロンプトに色付け
export PS1='\[\e[0;35m\][\u@\h \W]\[\e[0;36m\]\n\[\e[0;35m\]\$ \[\e[0;0m\]'

# brew path
export PATH="/opt/homebrew/bin:$PATH"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
