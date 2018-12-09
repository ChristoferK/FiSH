# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.O9rmJe/pid.fish @ line 2
function pid
	[ -z "$argv" ]; \
		and return (false); \
		or  PGREP -i $argv;
	return $status
end
