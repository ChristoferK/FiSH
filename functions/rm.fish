# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.SVwnSm/rm.fish @ line 2
function rm --description 'Redefines the rm command so that files are trashed instead of deleted'
	printf '%b%s\n%b%s %b%s%b %s' (% 32) "This command has been voluntarily decommissioned" \
	                               (% 0)  "Use the" (% 37 3 5) "trash" (% 0) "command instead"
end
