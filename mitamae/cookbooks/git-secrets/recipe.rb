package 'git-secrets'

execute 'git secrets --install ~/.git-templates/git-secrets' do
  not_if 'test -f ~/.git-templates/git-secrets/hooks/commit-msg ' \
    '-a -f ~/.git-templates/git-secrets/hooks/pre-commit ' \
    '-a -f ~/.git-templates/git-secrets/hooks/prepare-commit-msg'
end
