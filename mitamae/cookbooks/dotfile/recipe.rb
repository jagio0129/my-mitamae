define :dotfile do
  name = params[:name]

  src = File.join(node[:dotfiles], name)
  dst = File.join(node[:home], name)

  directory File.dirname(dst)

  link dst do
    to src
  end
end

dotfile ".gemrc"
dotfile ".bash_profile"
dotfile ".bashrc"
dotfile ".bash_aliases"