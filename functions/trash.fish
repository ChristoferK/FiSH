# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.C8Fcxx/trash.fish @ line 2
function trash --description "Send files to the trash.  Uses osascript so the deletion can be undone in Finder."
	for file in $argv
		set -l dir ( dirname "$file" )
		[ "$dir" = "." ]; and \
			set -l fp ( printf "$PWD/%s" \
			          ( basename -a "$file" ) )
		set files $files "$file"
	end

	printf "on run fs
			REPEAT WITH f in fs
				SET f's contents to ¬
				    f as POSIX file ¬
				      as alias
			END REPEAT

			tell app \"Finder\" to DELETE fs
		end run" | OSASCRIPT - $files > /dev/null
end
