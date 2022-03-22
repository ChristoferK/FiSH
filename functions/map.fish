function map --no-scope-shadowing
		string replace --re --filter -- '(?xs)^
		                 (?: ( [^-=\h{]+ ) = )?
		                 (\{)  [ \H\h ]*  (\})$
		                 ' '$2 $3 $1' "$argv" |
		                 read --local --array ϟ
		not [ "$ϟ[1 2]" = "{ }" ]
		and return ( err Script \
		    must be enclosed in \
		    {...}. )

		set -l -- ϟ $ϟ[3]
		begin set -- "$ϟ"
		      set -S "$ϟ"
		end &>/dev/null

		and set ϟ {set,-a,-g,$ϟ}
		and set -q $ϟ[4] &&
		    set -e  ϟ[3] || true

		or  err {Error,token:,$ϟ}
		or  set ϟ {printf,'%s\n'}

		set argv ( string replace -r -- '^.*?\{' \
		'' $argv | string replace -r -- '\}$' \; |
		           string collect --             )

		stdin

		for I in ( seq $N )
		      $ϟ ( string replace -a -- "@" \
		           "\"$$I\"" $argv | source |
		           string collect --        )
		end | read -z

		true
end
