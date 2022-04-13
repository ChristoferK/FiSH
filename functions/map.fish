function map --no-scope-shadowing
		string replace -rf -- '(?xs)
		    ^ (?: ( [^-=\h{]+ ) = )?
		      ( \{ ) [\H\h]* ( \} )
		    $' '$2 $3 $1' "$argv" |
		read --local --array -- ϟ
		and [ "$ϟ[1 2]" = "{ }" ]
		or  return ( err Script \
		    must be enclosed in \
		    {...}. )

		set --local ϟ $ϟ[3]
		begin set -- "$ϟ"
		      set -S "$ϟ"
		end &>/dev/null

		and set  ϟ {set,-a,-g,$ϟ}
		and set -q $ϟ[4] &&
		    set -e  ϟ[3] || true

		or  err  {Error,token:,$ϟ}
		or  set  ϟ {printf,'%s\n'}

		string replace --regex \
		         --all -- '(?xs)
		         ^ .*? \{ | \} $
		         ' ''  {$argv} |
		         read -z argv

		stdin

		for I in ( seq $N )
		      $ϟ ( string replace -a -r -- \
		                  "(?x)(?<! (\\\ ) )
		                  ((?1){2})* \K @" (
		           string escape --no-quoted \
		           -- "$$I" ) $argv | source |
		           string collect --         )
		end | read -z

		true
end
