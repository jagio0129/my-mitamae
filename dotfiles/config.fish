###############
### alias #####
###############
# anyenv設定は~/.config/fish/config.d/に

alias edit-fish='vim ~/.config/fish/config.fish'
alias dc='docker compose'
alias mycli-base='mycli -uroot -h 127.0.0.1 -P 3306'

# rails
alias be='bundle exec'
alias start='bin/rails s -b 0.0.0.0'

##########
# config #
##########
# ディレクトリの色を太字の青に
#   https://nemoplus.hateblo.jp/entry/20090119/1232373540
export LSCOLORS=Exfxcxdxbxegedabagacad

#############
# *env path #
#############
# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
