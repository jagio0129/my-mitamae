git "#{node[:home]}/.anyenv" do
  repository "https://github.com/anyenv/anyenv"
end

# anyenvで入れた*env系を一括でアップデートしてくれるやつ
directory "#{node[:home]}/.anyenv/plugins" do
  mode "775"
  owner node[:owner]
  group "staff"
end

git "#{node[:home]}/.anyenv/plugins/anyenv-update" do
  repository "https://github.com/znz/anyenv-update.git"
end

git "#{node[:home]}/.anyenv/plugins/anyenv-git" do
  repository "https://github.com/znz/anyenv-git.git"
end

######################
# anyenv-update使い方 #
######################
# anyenv git pull # anyenvでインストールした全ての**env系とインストールされているプラグインのアップデート
# anyenv git gc # ガーベージコレクション（お掃除）
# anyenv git remote -v # 全てのリモートリポジトリを表示
# anyenv git status # gitのステータス表示
