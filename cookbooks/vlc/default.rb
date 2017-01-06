require "itamae/plugin/resource/brew"

# install
brew "Caskroom/cask/vlc" do
  user "#{node[:user]}"
  not_if "test -d /usr/local/Caskroom/vlc/"
end
