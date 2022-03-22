function vars
		not [ "$argv" ] 
		and set argv ""

		set --local var
		set --local val
		set --local Δ

		set | string match --entire --regex -- ^(
		      string join  -- '|' \\Q$argv\\E ) |
		      while read --token --array -- val
		            set var "$val[1]"
		            set -e -- val[1]
		         Δ= begin [ "$val[2]" ] ||
		                  set --erase Δ[1]
		                  printf %s $var: \040
		                  printf %s {\{\n\t,$Δ,}
		                  string escape -- $val |
		                  string join   -- ,\n\t
		                  printf %s {\}\n,,{$Δ}}
		            end | fish_indent --ansi
		      end | string collect --
end
