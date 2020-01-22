Alias to open github directory on browser (git ghe)

git config --global alias.ghe '!f() { remote=$(git remote get-url origin); url="${remote/git@github.wdf.sap.corp:/https://github.wdf.sap.corp/}";open $url; }; f'
