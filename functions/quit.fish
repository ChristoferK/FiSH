# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.fMU9IS/quit.fish @ line 2
function quit --description 'Quit a list of applications'
	[ -n "$argv[1]" ]; and OSASCRIPT -e \
		"ignoring application responses
			QUIT the application named \"$argv[1]\"
		 end ignoring";
	[ -n "$argv[2]" ]; and quit $argv[2..-1]
end
