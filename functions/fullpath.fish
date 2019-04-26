function fullpath --description 'Expands and standardises relative paths and follows alias files to their origin, returning the resulting path'
	[ -n "$argv" ];
		and PRINTF '%s\n' ( OSASCRIPT -e "resolve(\"$argv\")

		to resolve(fp as text)
			tell application \"Finder\"
				set f to item (fp's POSIX path as POSIX file)
				if f's class ≠ alias file then return ¬
					the POSIX path of (f as text)

				my resolve(f's original item)
			end tell
		end resolve")
end
