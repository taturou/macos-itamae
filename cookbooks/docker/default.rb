require "itamae/plugin/resource/brew"

# install
brew "Caskroom/cask/docker" do
  user "#{node[:user]}"
end
