home="#{node[:home_macos]}/#{node[:user]}"
itamae_root="#{node[:home_macos]}/#{node[:user]}/#{node[:itamae_root]}"

link "#{home}/.gitconfig" do
  to "#{itamae_root}/cookbooks/git/files/home/username/_.gitconfig"
  not_if "test -L #{home}/.gitconfig"
  user "#{node[:user]}"
end
