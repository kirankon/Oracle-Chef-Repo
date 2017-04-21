remote_file "/Users/kirankonda/Downloads/#{node['oracle_170417_cookbook']['git_installer']}" do
  source "http://sourceforge.net/projects/git-osx-installer/files/#{node['oracle_170417_cookbook']['git_installer']}/download?use_mirror=autoselect
"
  owner "root"
  mode "755"
  action :create
  not_if {File.exist?("/Users/kirankonda/Downloads/#{node['oracle_170417_cookbook']['git_installer']}")}
end