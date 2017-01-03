require "itamae/plugin/resource/brew"

# install
brew 'tree' do
  user "#{node[:user]}"
end
