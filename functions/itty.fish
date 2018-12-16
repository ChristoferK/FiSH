# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.oinlzJ/itty.fish @ line 1
function itty
	[ -z "$argv" ];
		and ECHO "Missing input file.";
		and return

	set -l ittyURL ( PRINTF "https://itty.bitty.site/#/%s\n" \
				( CAT "$argv" \
				| LZMA -9 \
				| BASE64 ))

	PRINTF "$ittyURL"
	PRINTF "$ittyURL" | pbcopy
end
