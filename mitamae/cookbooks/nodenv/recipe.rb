package 'nodenv'

anyenv_dir = "/Users/jagio/.anyenv"

# install nodenv
execute 'anyenv install nodenv' do
  not_if "test #{anyenv_dir}/.anyenv/envs/nodenv"
  not_if "brew list | grep anyenv"
end

# install default version
default_version = node[:nodenv][:default]
execute "nodenv install #{default_version}" do
  not_if "nodenv versions | grep #{default_version}"
end
execute "nodenv global #{default_version}" do
  not_if "nodenv global | grep #{default_version}"
end

# install others version
other_versions = node[:nodenv][:others]
return if other_versions.nil?

other_versions.each do |version|
  execute "nodenv install #{version}" do
    not_if "nodenv versions | grep #{version}"
  end
end
