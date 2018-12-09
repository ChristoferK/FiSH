# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.AxqDeD/reveal.fish @ line 2
function reveal --description 'Reveal a file in Finder'
	OPEN -R (eval "ECHO $argv")
end
