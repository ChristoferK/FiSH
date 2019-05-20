# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.iNKSpZ/trash.fish @ line 2
function trash --description 'Send files to the trash.  Uses osascript so the deletion can be undone in Finder.'
	[ -z "$argv" ] && return (false)

	for fp in $argv
		set dir ( dirname ( printf $fp ) )
		set filename ( basename -a "$fp" )
		[ "$dir" = "." ] && set dir "$PWD"
		set fp "$dir/$filename"
		set fs $fs "$fp"
	end

	printf "on run fs
			repeat with f in fs
				try
					f as POSIX file
				on error
					missing value
				end try
				set f's contents to the result
			end repeat
			tell app \"Finder\" to delete every «class furl» in fs
		end run" | osascript - $fs > /dev/null 2>1
end
