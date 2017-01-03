require "itamae/plugin/resource/brew"

# install
brew "Caskroom/cask/vlc" do
  user "#{node[:user]}"
end
