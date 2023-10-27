include_recipe File.expand_path('../../../helper.rb', __FILE__)

node.reverse_merge!(
  dotfiles: File.expand_path('../../../../dotfiles/', __FILE__)
)

include_cookbook 'dotfile'
include_cookbook 'anyenv'
include_cookbook 'rbenv'
include_cookbook 'nodenv'
include_cookbook 'goenv'
include_cookbook 'bash'
include_cookbook 'fish'
include_cookbook 'vim'
include_cookbook 'tmux'
