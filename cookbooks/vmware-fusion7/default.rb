require "itamae/plugin/resource/brew"

# install
brew 'Caskroom/versions/vmware-fusion7' do
  user "#{node[:user]}"
  not_if "test -d /usr/local/Caskroom/vmware-fusion7/"
end
