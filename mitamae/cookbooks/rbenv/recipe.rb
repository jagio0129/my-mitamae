package 'rbenv'

anyenv_dir = "/Users/jagio/.anyenv"

# install rbenv
execute 'anyenv install rbenv' do
  not_if "test #{anyenv_dir}/.anyenv/envs/rbenv"
  not_if "brew list | grep anyenv"
end

# install default version
default_version = node[:rbenv][:default]
execute "rbenv install #{default_version}" do
  not_if "rbenv versions | grep #{default_version}"
end
execute "rbenv global #{default_version}" do
  not_if "rbenv global | grep #{default_version}"
end

# install others version
other_versions = node[:rbenv][:others]
other_versions.each do |version|
  execute "rbenv install #{version}" do
    not_if "rbenv versions | grep #{version}"
  end
end
