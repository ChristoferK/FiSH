# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.ifM23n/mkpath.fish @ line 2
function mkpath --description 'Creates a blank file at location specificed by the path, creating any new directories as required.'
	[ -z "$argv" ]; \
		and ECHO "Usage: mkpath dir1/dir2/.../dirN/[filename]"; \
		and return

	# Split the argument into an array where:
	#     path[1] = directories only; OR filename if no directories specified
	#     path[2] = filename only; OR empty if no/only directories specified
	set -l path (string split --max 1 --right / "$argv[1]")

	if [ -n "$path[2]" ];
		MKDIR -p "$path[1]"
		MKFILE 0 "$argv[1]"
	else
		# argument contains only a filename OR only directories
		[ (string match --entire / "$path[1]") ]; \
			and MKDIR -p "$path[1]"; \
			or MKFILE 0 "$path[1]"
	end

	# Process remaining arguments recursively
	[ -n "$argv[2]" ]; and mkpath $argv[2..-1]

	return (true)
end
