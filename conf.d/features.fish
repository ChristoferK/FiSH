set -l fish_features stderr-nocaret \
                     qmark-noglob   \
                     regex-easyesc

for feature in $fish_features
	status test-feature $feature ||
	exec fish -f ( string join ,  \
	               $fish_features )
end
