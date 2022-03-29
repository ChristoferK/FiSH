function ss
		string replace --regex --filter -- \
		       '(?x) ^ \{ \h* (.+ ) \h* \|
		                  \h* (.*?) \h* \}
		             $' '${1}\n${2}' $argv | 
		read --local --line -- old new
		string match --inv  -- "{*}" $argv |
		read --local --null --delim=\n file
		echo sed -i '' -e "s/$old/$new/g" {$file}
end
