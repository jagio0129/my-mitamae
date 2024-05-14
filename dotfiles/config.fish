###############
### alias #####
###############
# anyenv設定は~/.config/fish/config.d/に

# alias
source ~/.bash_aliases

##########
# config #
##########
# ディレクトリの色を太字の青に
#   https://nemoplus.hateblo.jp/entry/20090119/1232373540
export LSCOLORS=Exfxcxdxbxegedabagacad
set -U fish_color_command green

#############
# *env path #
#############
# anyenv
set -x PATH $HOME/.anyenv/bin $PATH

# adb
set -x PATH $HOME/Library/Android/sdk/ $PATH

set -x JAVA_HOME /Applications/Android Studio.app/Contents/jbr/Contents/Home
