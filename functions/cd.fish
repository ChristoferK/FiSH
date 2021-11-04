function cd
		not [ "$argv" ]
		and set argv ~
		builtin cd "$argv"
end
