# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.A0bGZ7/fn.fish @ line 2
function fn --description 'Multi-function tool for listing, creating, editing, and deleting user-defined functions'
	set -l dir ~/Scripts/Shell/FiSH/functions

        # No arguments:
        # Print a two-colum list of function names, excluding those
        # beginning with "fish_" or an underscore.
        if [ -z "$argv" ];
                printf '%s\n' (basename -s ".fish" "$dir"/*.fish) \
                | grep -E -iv '^(_[^\.]|fish_)' \
                | lam -f-30.30 - - 2>&1

                return (true)
        end

        # At least one argument:
        switch $argv[1];
        case -e --erase; # Delete a user function
                functions $argv
        	if [ -e "$dir/$argv[2].fish" ];
                        command rm "$dir/$argv[2].fish"
                end
        case -a --all;   # Lists every fish function
        	functions $argv
        case -d --dir;   # Prints the path to the directory of user functions
                printf '%s\n' "$dir"
        case "*";        # Create or edit the named user function
                if [ -z ( string sub --start 1 --length 1 "$argv" | tr -d : ) ];
                        printf (% 37 3)'\n%s' \
                               ( string match -ivr '# Defined in .* @ line .*' \
                               ( cat "$dir/"( printf "$argv[1]" | tr -d : )".fish" ) ) \
                               \r
                        return (true)
                else
        	        funced "$argv[1]" 2>&1
        	        funcsave "$argv[1]"; \
        	        and printf 'Function '(% 37 3)'%s'(% 0)' saved\n' $argv[1]
                end
        end

        return $status
end
