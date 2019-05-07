# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.C8Fcxx/trash.fish @ line 2
function trash --description "Send files to the trash.  Uses osascript so the deletion can be undone in Finder."
	for f in $argv
		set -l dir ( dirname "$f" )
		[ "$dir" = "." ] && set -l fp ( printf "$PWD/%s" \
			                      ( basename -a "$f" ) )
		set fs $fs "$f"
	end

	printf "on run fs
			REPEAT WITH f in fs
				TRY
					f as POSIX file as alias
				ON ERROR
					missing value
				END TRY
				SET contents of f to the result
			END REPEAT
			SET fs to the aliases in fs
			TELL app \"Finder\" to DELETE fs
		end run" | osascript - $fs > /dev/null
end
