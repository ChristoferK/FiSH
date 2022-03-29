function @
		set --local -- ℓ  --line
		argparse  L/line  -- $argv
		[ "$_flag_line" ] || set ℓ

		not set --{local,query}   ϟ
		and set --{local,} ϟ argv[]
		and begin stdin $ℓ &&
			ϟ=":[stdin]" @ $0
		end

		count {$argv} | read -l N
		N_ >/dev/null || return 0

		printf %s {$ϟ=,\{,\n} 1>&2
		for I in ( seq $N )
			printf %4s $I ""  1>&2
			printf %s  $argv[$I]
			[ $I = $N ] && break
		#	printf ,          1>&2
			printf \n
		end
		printf %s {\n,\},\n}  1>&2
end
