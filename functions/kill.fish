function kill
[ -z "$argv" ] && cat | read -z argv
for arg in $argv
pwsh Stop-Process -Name "*$arg*"
end
end
