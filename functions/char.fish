function char
		for line in ( string split -- \n "$argv" )
		    letters=( string split -- "" "$line" ) begin
				printf '%-2s  '   $letters[1..-2] 1>&2
				printf '%-2s%s'   $letters[-1] \n 1>&2
				printf '%-2X  ' \'$letters[1..-2]
				printf '%-2X%s' \'$letters[-1] \n
				printf \n 1>&2
			end
		end
end
