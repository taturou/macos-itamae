require "itamae/plugin/resource/brew"

# install
brew 'pstree' do
  user "#{node[:user]}"
end
