include_recipe File.expand_path('../../../helper.rb', __FILE__)

node.reverse_merge!(
  dotfiles: File.expand_path('../../../../config/', __FILE__),
  home: '/Users/jagio'
)

# include_cookbook 'anyenv'
include_cookbook 'rbenv'
