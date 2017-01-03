itamae_root="#{node[:home_macos]}/#{node[:user]}/#{node[:itamae_root]}"

execute "Update Gemfile" do
  command "echo \"gem 'itamae-plugin-resource-brew'\" >> Gemfile"
  not_if "grep 'itamae-plugin-resource-brew' Gemfile"
  user "#{node[:user]}"
  cwd "#{itamae_root}"
end

execute "bundle install" do
  command "bundle install --path=.bundle"
  user "#{node[:user]}"
  cwd "#{itamae_root}"
end
