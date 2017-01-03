require "itamae/plugin/resource/brew"

# install
brew 'lv' do
  user "#{node[:user]}"
end
