execute 'install anyenv' do
  command 'brew install anyenv'
  command 'anyenv init'
  command '/bin/bash -lc "anyenv install --init"'
  not_if "brew list | grep anyenv"
end

# anyenvで入れた*env系を一括でアップデートしてくれるやつ
directory "#{node[:home]}/.anyenv/plugins" do
  mode "775"
  owner "jagio"
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
