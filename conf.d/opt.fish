set fish_features ( status features | 
                    string match -r \
		    -- \\H+ )

for feature in $fish_features
	status test-feature $feature ||
	exec fish --features=( string \
	     join -- , $fish_features )
end
