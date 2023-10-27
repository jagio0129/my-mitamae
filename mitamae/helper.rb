MItamae::RecipeContext.class_eval do
  def include_cookbook(name)
    root = File.expand_path('..', __FILE__)
    include_recipe File.join(root, 'cookbooks', name, 'recipe')
  end

  def brew_package(name)
    execute "install #{name}" do
      command "brew install #{name}"
      not_if "brew list | grep #{name}"
    end
  end
end
