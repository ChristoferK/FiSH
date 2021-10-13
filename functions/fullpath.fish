# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.qG4xPH/fullpath.fish @ line 2
function fullpath --description 'Expands and standardises relative paths and follows alias files to their origin, returning the resulting path'
	[ -z "$argv" ] && return (false)
	
	for fp in $argv
		set -l dir ( dirname ( printf $fp ) )
		set -l filename ( basename -a "$fp" )
		[ "$dir" = "." ] && set -l dir "$PWD"
		set -l fp "$dir/$filename"
		set fs $fs "$fp"
	end

	printf "property sys : app \"System Events\"
		property Finder : app \"Finder\"
		property text item delimiters : linefeed

		on run fs
			repeat with fp in fs
				set fp's contents to resolve(fp)
			end repeat
			fs as text
		end run

		to resolve(fp as text)
			local fp
			
			tell Finder's item (sys's alias fp as alias)
				if its class ≠ «class alia» then return ¬
					the POSIX path of (it as alias)
				my resolve(its «class orig»)
			end tell
		end resolve" | osascript - $fs
end
