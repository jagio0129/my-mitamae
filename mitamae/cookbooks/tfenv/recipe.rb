tfenv_dir = "#{node[:home]}/.tfenv"

# install
execute "anyenv install tfenv" do
  not_if "anyenv version | grep tfenv"
end

# brew install grep
package "grep"

# install default version
default_version = node[:tfenv][:default]
execute "tfenv install #{default_version}" do
  not_if "tfenv list | grep #{default_version}"
end
execute "tfenv use #{default_version}" do
  not_if "terraform -v | grep #{default_version}"
end

# install others version
other_versions = node[:tfenv][:others]
return if other_versions.nil?

other_versions.each do |version|
  execute "tfenv install #{version}" do
    not_if "tfenv versions | grep #{version}"
  end
end
