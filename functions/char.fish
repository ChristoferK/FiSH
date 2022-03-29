function char
		chars=( string split -- "" "$argv"
		) begin printf %-3s "" $chars \n
		        printf %-3x  \'$chars
		end # | column -t
end
