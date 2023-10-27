execute 'install bash-completion' do
  command "brew install bash-completion"
  not_if "brew list | grep bash-completion"
end
