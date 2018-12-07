# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.C8Fcxx/trash.fish @ line 2
function trash
	# mv -v $argv ~/.Trash
	set -l fs ( PRINTF "$PWD/%s:" ( BASENAME -a $argv ) )

	PRINTF "SET the TEXT ITEM DELIMITERS to \":\"
		SET fs to TEXT ITEMS 1 thru -2 of \"$fs\"

		REPEAT WITH f in fs
			SET the contents of f to POSIX file f
		END REPEAT

		TELL app \"Finder\" to DELETE fs" \
	| OSASCRIPT > /dev/null
end
