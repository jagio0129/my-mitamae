anyenv_dir = "#{node[:home]}/.anyenv"

# install
execute "anyenv install rbenv" do
  not_if "anyenv version | grep rbenv"
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
return if other_versions.nil?

other_versions.each do |version|
  execute "rbenv install #{version}" do
    not_if "rbenv versions | grep #{version}"
  end
end
