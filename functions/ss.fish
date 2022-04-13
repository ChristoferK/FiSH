function ss
		string replace -rf -- '(?x)
		      ^ \{ \h* (.+ ) \h* \|
		           \h* (.*?) \h* \}
		      $' '$1\n$2' {$argv} |
		      string escape     \
		      --style=regex  -- |
		      read --line -l -- 1 2

		sed    -i '' -e s/$1/$2/g (
		string match -v --  '{*}' \
		                 {$argv}  )
end
