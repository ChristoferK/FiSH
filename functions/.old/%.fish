# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.6dMA7M/%.fish @ line 2
function '%' --description 'Prints an escape sequence that styles terminal output'
	printf '\e[%sm' $argv
end
