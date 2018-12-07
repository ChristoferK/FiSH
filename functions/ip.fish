# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.k9I7RN/ip.fish @ line 2
function ip
	set -l curlIP "CURL ipinfo.io --silent \
		| GREP -E -io '([A-Z0-9,\.-]{2,} ?)+' \
		| PASTE -sd :\n -"
	set -l IPonly "| HEAD -1 | GREP -E -io '[^A-Z:]+'"

	if [ -n "$argv" ];
		switch "$argv"
		case "--only"
 			eval "$curlIP $IPonly"
		case "--only --copy"
			eval "$curlIP $IPonly"
			eval "$curlIP $IPonly | PBCOPY"
		case "--copy"
			eval "$curlIP"
			eval "$curlIP $IPonly | PBCOPY"
		case "*"
			eval "$curlIP"
		end

		return
	end

	eval "$curlIP"
end
