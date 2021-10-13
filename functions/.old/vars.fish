# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.A753YF/vars.fish @ line 1
function vars --description 'Coloured list of shell variables and their values as returned by the set command when passed no arguments'
	for var in (set $argv)
                set fields (string split ' ' $var)
                printf '%b%b%s  %b%b%s%b\n' \
                        (set_color --bold) (% 36) "$fields[1]" \
                        (set_color normal) (% 37 3) "$fields[2..-1]" (% 0)
        end
end
