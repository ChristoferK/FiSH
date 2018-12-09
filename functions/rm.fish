# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.ltamEj/rm.fish @ line 2
function rm --description "Redefines the rm command so that files are trashed instead of deleted"
	trash $argv
end
