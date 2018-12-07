# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.fMU9IS/quit.fish @ line 2
function quit
	[ -n "$argv" ]; and OSASCRIPT -e "QUIT the application named \"$argv\""
end
