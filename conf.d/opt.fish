set -U fish_features ( 
	 status features | 
     string match -r \
            -- '\H+' )

status features | 
string match -r \
-- '\H+(?=\toff)' || exit 0

exec fish --features=( 
	  string join -- \
	, $fish_features )
