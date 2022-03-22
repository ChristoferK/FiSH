function err
		string match -qr -- \
		'^[-+]\K\d+' "$argv"
		or set argv 1 $argv

		printf %b "$argv[2..]" 1>&2
		return    "$argv[1  ]"
end
