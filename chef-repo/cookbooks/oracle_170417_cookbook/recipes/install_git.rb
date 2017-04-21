#execute "extract_git_cd" do
#	command <<-EOH
#	 hdiutil attach /Users/kirankonda/Downloads/git-2.10.1-intel-universal-mavericks.dmg
#	 cd "/Volumes/Git 2.10.1 Mavericks Intel Universal"
#	 sudo installer -pkg git-2.10.1-intel-universal-mavericks.pkg -target / 
#	 hdiutil detach "/Volumes/Git 2.10.1 Mavericks Intel Universal"
#	EOH
#end

execute "extract_git_cd" do
	command "hdiutil attach /Users/kirankonda/Downloads/git-2.10.1-intel-universal-mavericks.dmg"
end

execute "install_git_pkg" do
	cwd "/Volumes/Git 2.10.1 Mavericks Intel Universal"
	command "sudo installer -pkg git-2.10.1-intel-universal-mavericks.pkg -target / "
end

execute "detach_git_cd" do
	command "hdiutil detach '/Volumes/Git 2.10.1 Mavericks Intel Universal' "
end