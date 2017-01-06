require "itamae/plugin/resource/brew"

# install
brew "Caskroom/cask/visual-studio-code" do
  user "#{node[:user]}"
  not_if "test -d /usr/local/Caskroom/visual-studio-code/"
end
