require "itamae/plugin/resource/brew"

# install
brew "Caskroom/cask/docker" do
  user "#{node[:user]}"
  not_if "test -d /usr/local/Caskroom/docker/"
end
