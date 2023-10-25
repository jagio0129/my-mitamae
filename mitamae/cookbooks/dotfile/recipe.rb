define :base, path: nil do
  name = params[:name]
  path = params[:path]

  src = File.join(node[:dotfiles], name)
  dst = File.join(path, name)

  next if File.exist?(dst)

  directory File.dirname(dst)

  link dst do
    to src
  end
end

define :dotfile do
  base params[:name] do
    path node[:home]
  end
end

define :fishconfig do
  base params[:name] do
    path "#{node[:home]}/.config/fish/"
  end
end

define :fishalias do
  base params[:name] do
    path "#{node[:home]}/.config/fish/"
  end
end

dotfile ".gemrc"
dotfile ".bash_profile"
dotfile ".bashrc"
dotfile ".bash_aliases"
dotfile ".gitconfig"
dotfile ".vim"
dotfile ".vimrc"
dotfile ".vimrc.basic"
dotfile ".vimrc.neobundle"
dotfile ".vimrc.plugin"
fishconfig "config.fish"
