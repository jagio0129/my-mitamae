# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# My aliases
alias gg="git grep"
alias be="bundle exec"
alias dc="sudo docker-compse"
alias start="bundle exec rails s -b 0.0.0.0 -p 3000"
alias zest='bunddle exec zeus test'
alias bulk_rspec="bundle exec ruby ~/dotfiles/bulk_rspec.rb"
alias review='bundle exec rake db:create db:migrate RAILS_ENV=test'
alias relogin='exec $SHELL -l'