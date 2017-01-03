require "itamae/plugin/resource/brew"

# install
brew 'Caskroom/versions/vmware-fusion7' do
  user "#{node[:user]}"
end
