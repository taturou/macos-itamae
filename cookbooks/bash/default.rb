home="#{node[:home_macos]}/#{node[:user]}"
itamae_root="#{node[:home_macos]}/#{node[:user]}/#{node[:itamae_root]}"

link "#{home}/.bash_profile" do
  to "#{itamae_root}/cookbooks/bash/files/home/username/_.bash_profile"
  not_if "test -L #{home}/.bash_profile"
  user "#{node[:user]}"
end

link "#{home}/.bashrc" do
  to "#{itamae_root}/cookbooks/bash/files/home/username/_.bashrc"
  not_if "test -L #{home}/.bashrc"
  user "#{node[:user]}"
end
