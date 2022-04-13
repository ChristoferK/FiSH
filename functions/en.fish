function en
		string match --regex -- "(?xs)^ 
		       [-:] \K .+" "$argv[1]" |
		read --local -- lang && 
		set  --erase argv[1] ||
		set  --local lang en

		stdin

		trans -brief -join :{$lang} "$argv" {\n,$0}
end
