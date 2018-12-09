# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.eJFRdd/diffdef.fish @ line 2
function diffdef --description 'Compares the user defaults between two separate runs of this command to look for any changes.'
	set -l def_base_path /tmp/def.global
	set -l def_files "$def_base_path".*
	set -l n (count $def_files)
	set -l def_file "$def_base_path".(math "$n + 1")
	set -l def_files $def_files $def_file

	[ $n -gt 1 ]; \
		and PRINTF '%s\n' "Lingering temp files. Will purge." \
		 	          "Please rerun the command."; \
		and RM $def_files; \
		and return (false)

	DEFAULTS read > "$def_file"; and PRINTF '%s\n' "Defaults written to $def_file"

	[ $n -eq 1 ]; \
		and DIFF $def_files; \
		and RM $def_files > /dev/null

	return $status
end
