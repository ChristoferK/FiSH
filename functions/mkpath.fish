# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.ifM23n/mkpath.fish @ line 2
function mkpath --description 'Creates a blank file at location specificed by the path, creating any new directories as required.'
	[ -z "$argv" ]; \
		and ECHO "Usage: mkpath dir1/dir2/.../dirN/[file.ext]"; \
		and return

	# Process multiple arguments recursively
	[ (count $argv) -gt 1 ]; \
		and mkpath "$argv[1]"; \
		and mkpath "$argv[2..-1]"; \
		and return

	# Split the argument into an array where
	# path[1] = directories (or filename if no directories specified)
	# path[2] = filename (or empty if no/only directories specified)
	set -l path (string split --max 1 --right / "$argv")

	if [ (count $path) -eq 2 ];
		# argument contains directories
		MKDIR -p "$path[1]"
		MKFILE 0 "$argv"
		return $status
	else
		# argument contains just a filename
		# or just directories
		if [ (count (string match --entire / "$path[1]")) -eq 1 ];
			# directories
			MKDIR -p "$path[1]"
			return $status
		else
			#filename
			MKFILE 0 "$path[1]"
			return $status
		end
	end
end
