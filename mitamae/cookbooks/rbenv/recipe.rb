package 'rbenv'

anyenv_dir = "/Users/jagio/.anyenv"

execute 'anyenv install rbenv' do
  not_if "test #{anyenv_dir}/.anyenv/envs/rbenv"
  not_if "brew list | grep anyenv"
end

default_version = node[:rbenv][:default]
execute "rbenv install #{default_version}"
execute "rbenv global #{default_version}"

other_versions = node[:rbenv][:others]
other_versions.each do |version|
  execute "rbenv install #{version}"
end
