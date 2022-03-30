function pbcopy
		set argv "$argv"
		not [ "$argv" ]
		and stdin &&
		set argv  $0

		string join -- \n $argv |
		command pbcopy
end
