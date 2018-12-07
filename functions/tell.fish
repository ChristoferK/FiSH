# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.89MA6j/tell.fish @ line 2
function tell
	# No arguments
	[ -z "$argv" ]; and return (false)

	[ "$argv[1]" = "process" ]; and \
		set -l scpt (STRING REPLACE -r \
			'process "?(.+?)"? to (.*)' \
			'tell app "System Events" to tell process "${1}" to ${2}' \
			"$argv"); or \
		set -l scpt (STRING REPLACE -r \
			'(app(lication)? )?"?(.+?)"? to (.*)' \
			'tell app "${3}" to ${4}' \
			"$argv")

	OSASCRIPT -e "$scpt"
	return $status
end
