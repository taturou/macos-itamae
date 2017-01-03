itamae_root="#{node[:home_macos]}/#{node[:user]}/#{node[:itamae_root]}"

execute "Update Gemfile" do
  command "echo \"gem 'itamae-plugin-recipe-homebrew'\" >> Gemfile"
  not_if "grep 'itamae-plugin-recipe-homebrew' Gemfile"
  user "#{node[:user]}"
  cwd "#{itamae_root}"
end

execute "bundle install" do
  command "bundle install --path=.bundle"
  not_if "bundle list | grep 'itamae-plugin-recipe-homebrew'"
  user "#{node[:user]}"
  cwd "#{itamae_root}"
end
