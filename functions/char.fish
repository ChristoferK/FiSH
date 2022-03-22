function char
		chars=( string split -- "" $argv )
		begin printf %s {$chars,\40} \n 1>&2
		      printf %x%s {\"$chars,\40}
		end &| column -t
		true
end
