# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.eJFRdd/diffdef.fish @ line 2
function diffdef
	set -l def_base_path /tmp/def.global
	set -l def_files "$def_base_path".*

	set -l n (count $def_files)

	set -l def_file "$def_base_path".(math "$n + 1")
	set -l def_files $def_files $def_file

	[ $n -gt 1 ]; and \
		PRINTF '%s\n' "Lingering temp files. Will purge." \
		 	      "Please rerun the command."; and \
		RM $def_files; and \
		return (false)

	DEFAULTS read > "$def_file"; and \
		PRINTF '%s\n' "Defaults written to $def_file"

	if [ $n -eq 0 ]; return $status;
	else
		DIFF $def_files
		RM $def_files > /dev/null
	end

	return $status
end
