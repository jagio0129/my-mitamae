
HISTSIZE=1000
HISTFILESIZE=2000

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# プロンプトに色付け
export PS1='\[\e[0;35m\][\u@\h \W]\[\e[0;36m\]\n\[\e[0;35m\]\$ \[\e[0;0m\]'

# brew path
export PATH="/opt/homebrew/bin:$PATH"

# rbenv
export PATH="~/.anyenv/envs/rbenv/bin:$PATH"
export PATH="~/.anyenv/envs/rbenv/shims:$PATH"
eval "$(rbenv init -)"
