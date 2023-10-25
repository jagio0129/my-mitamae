vim_bundle_path = "./dotfiles/.vim/bundle"

directory "#{vim_bundle_path}" do
  mode "775"
  owner "jagio"
  group "staff"
end

git "#{vim_bundle_path}/neobundle.vim" do
  repository "https://github.com/Shougo/neobundle.vim.git"
end
