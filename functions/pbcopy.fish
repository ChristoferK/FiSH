function pbcopy
		set argv "$argv"
		not [ "$argv" ]
		and begin stdin
		    set argv $0
		end

		printf %s\n $argv |
		command pbcopy
end
