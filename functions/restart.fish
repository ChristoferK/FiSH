function restart
		contains fish $argv
		or  not [ "$argv" ]
		and return ( exec \
		fish --init=clear )

		pkill -i -x "$argv"
		open     -a "$argv"
		pgrep -i -x "$argv" &>/dev/null
end
