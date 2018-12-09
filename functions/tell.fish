# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.89MA6j/tell.fish @ line 2
function tell --description 'Execute a one-line AppleScript'
	# No arguments
	[ -z "$argv" ]; \
		and ECHO "Usage: tell [application|process] %app% to..."; \
		and return (false)

	[ "$argv[1]" = "process" ]; and \
		set -l scpt (string replace -r \
			'process "?(.+?)"? to (.*)' \
			'app "System Events" to tell process "${1}" to ${2}' \
			"$argv"); or \
		set -l scpt (string replace -r \
			'(app(lication)? )?"?(.+?)"? to (.*)' \
			'app "${3}" to ${4}' \
			"$argv")

	OSASCRIPT -e "tell $scpt"
	return $status
end
