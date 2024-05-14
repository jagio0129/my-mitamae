anyenv_dir = "#{node[:home]}/.anyenv"

# install
execute "anyenv install goenv" do
  not_if "anyenv version | grep goenv"
end

# install default version
default_version = node[:goenv][:default]
execute "goenv install #{default_version}" do
  not_if "goenv versions | grep #{default_version}"
end
execute "goenv global #{default_version}" do
  not_if "goenv global | grep #{default_version}"
end

# install others version
other_versions = node[:goenv][:others]
return if other_versions.nil?

other_versions.each do |version|
  execute "goenv install #{version}" do
    not_if "goenv versions | grep #{version}"
  end
end
