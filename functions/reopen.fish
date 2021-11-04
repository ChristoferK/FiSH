function restart
		[ "$argv" ]
		or return (
		exec fish \
		 -C clear )

		pkill -i -x "$argv"
		and open -a "$argv"
end
