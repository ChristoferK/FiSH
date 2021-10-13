# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.oinlzJ/itty.fish @ line 1
function itty
	[ -z "$argv" ];
		and ECHO "Missing input file.";
		and return

	[ -f "$argv" ];
		and CP "$argv" /tmp/itty;
		or  ECHO -n "$argv" > /tmp/itty

	set -l ittyURL ( PRINTF "https://itty.bitty.site/#/%s\n" \
				( CAT /tmp/itty \
				| LZMA -9 \
				| BASE64 ))

	PRINTF "%s\n" "$ittyURL"
	PRINTF "%s" "$ittyURL" | pbcopy
end
