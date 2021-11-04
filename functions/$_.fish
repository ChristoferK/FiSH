function '$_'
		not set --local --query Ø
		and set --local Ø 0
		Ø=(math $Ø + 1) eval $history[$Ø] $argv
end
