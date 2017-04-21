default['oracle_170417_cookbook']['sudo']['groups'] = [ 'sysadmin', 'wheel', 'admin' ]
default['oracle_170417_cookbook']['sudo']['users']  = [ 'jerry', 'greg']

if node['platform'] == 'windows' 
  default['oracle_170417_cookbook']['git_installer']='Git-2.12.2.2-64-bit.exe'
  default['oracle_170417_cookbook']['directory']='C:/var/www/customers/public_html'
  default['oracle_170417_cookbook']['owner']='Administrator'
  default['oracle_170417_cookbook']['group']='Administrator'
  default['oracle_170417_cookbook']['mode']='0755'
else
default['oracle_170417_cookbook']['git_installer']='git-2.10.1-intel-universal-mavericks.dmg'
default['oracle_170417_cookbook']['directory']='/var/www/customers/public_html'
default['oracle_170417_cookbook']['owner']='root'
default['oracle_170417_cookbook']['group']='root'
default['oracle_170417_cookbook']['mode']='0755'
end