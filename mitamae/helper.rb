MItamae::RecipeContext.class_eval do
  def include_cookbook(name)
    root = File.expand_path('..', __FILE__)
    include_recipe File.join(root, 'cookbooks', name, 'recipe')
  end

  # cask list
  #   https://formulae.brew.sh/cask/
  def cask(name)
    execute "brew install --cask #{name}" do
      not_if "brew list --cask #{name}"
    end
  end

  # anyenv経由でinstallしたい*envのヘルパー
  #   ex) hogenv 'rbenv'
  def hogenv(name)
    anyenv_dir = "#{node[:home]}/.anyenv"

    # install
    execute "anyenv install #{name}" do
      not_if "anyenv version | grep #{name}"
    end

    # install default version
    default_version = node[name.to_sym][:default]
    execute "#{name} install #{default_version}" do
      not_if "#{name} versions | grep #{default_version}"
    end
    execute "#{name} global #{default_version}" do
      not_if "#{name} global | grep #{default_version}"
    end

    # install others version
    other_versions = node[name.to_sym][:others]
    return if other_versions.nil?

    other_versions.each do |version|
      execute "#{name} install #{version}" do
        not_if "#{name} versions | grep #{version}"
      end
    end
  end

  # cookbooks配下のすべてのレシピを実行する
  #   ※ 実行順がディレクトリ名順になるので注意
  def all_include_cookbook(ignores=[])
    cookbooks = Dir.glob('./mitamae/cookbooks/*').map {|c| c.split("/").last }
    cookbooks.each do |cookbook|
      next if ignores.include?(cookbook)
      include_cookbook cookbook
    end
  end
end
