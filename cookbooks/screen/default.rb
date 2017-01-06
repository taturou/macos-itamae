require "itamae/plugin/resource/brew"

home="#{node[:home_macos]}/#{node[:user]}"
itamae_root="#{node[:home_macos]}/#{node[:user]}/#{node[:itamae_root]}"

# install
brew 'homebrew/dupes/screen' do
  user "#{node[:user]}"
  not_if "test -d /usr/local/Cellar/screen"
end

# screenrc
link "#{home}/.screenrc" do
  to "#{itamae_root}/cookbooks/screen/files/home/username/_.screenrc"
  not_if "test -L #{home}/.screenrc"
  user "#{node[:user]}"
end
