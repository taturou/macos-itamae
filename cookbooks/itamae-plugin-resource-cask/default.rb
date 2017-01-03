itamae_root="#{node[:home_macos]}/#{node[:user]}/#{node[:itamae_root]}"

execute "Update Gemfile" do
  command "echo \"gem 'itamae-plugin-resource-cask'\" >> Gemfile"
  not_if "grep 'itamae-plugin-resource-cask' Gemfile"
  user "#{node[:user]}"
  cwd "#{itamae_root}"
end

execute "bundle install" do
  command "bundle install --path=.bundle"
  user "#{node[:user]}"
  cwd "#{itamae_root}"
end
