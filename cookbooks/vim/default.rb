require "itamae/plugin/resource/brew"

home="#{node[:home_macos]}/#{node[:user]}"
itamae_root="#{node[:home_macos]}/#{node[:user]}/#{node[:itamae_root]}"

# install
brew 'vim' do
  user "#{node[:user]}"
end

# vimrc
link "#{home}/.vimrc" do
  to "#{itamae_root}/cookbooks/vim/files/home/username/_.vimrc"
  not_if "test -L #{home}/.vimrc"
  user "#{node[:user]}"
end

link "#{home}/.vim" do
  to "#{itamae_root}/cookbooks/vim/files/home/username/_.vim"
  not_if "test -L #{home}/.vim"
  user "#{node[:user]}"
end

# create tmp directory
directory "#{home}/.tmp/vim/swap" do
  user "#{node[:user]}"
end

directory "#{home}/.tmp/vim/backup" do
  user "#{node[:user]}"
end
