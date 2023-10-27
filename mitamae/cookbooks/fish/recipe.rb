# install fish
package 'fish'

# install fisherman
execute 'curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher' do
  not_if 'test -e ~/.config/fish/functions/fisher.fish'
end

# install theme(theme-bobthefish)
execute "/opt/homebrew/bin/fish -c 'fisher install oh-my-fish/theme-bobthefish'" do
  not_if "/opt/homebrew/bin/fish -c 'fisher list' | grep oh-my-fish/theme-bobthefish"
end

# install powerline fonts
execute "powerline fonts" do
  command "git clone https://github.com/powerline/fonts.git ~/fonts && cd ~/fonts && ./install.sh"
  not_if "test -d ~/fonts"
end
