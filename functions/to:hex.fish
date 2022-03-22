function to:hex
		not set --local --query ϟ
		and stdin && set -a argv $0

		[ ! "$argv"
		] && return (
		set --local \
		    --query ϟ )

		math --base=hex $argv[1]
		ϟ= to:hex $argv[2..]
end
