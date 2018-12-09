# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.Y8QBuT/fn.fish @ line 2
function fn --description 'Multi-function tool for listing, creating, editing, and deleting user-defined functions'
	# Directory of autoloading user functions
        set -l dir ~/Documents/GitHub/FiSH/functions

        # No arguments:
        # Print a two-colum list of function names, excluding those
        # beginning with "fish_" or an underscore.
        if [ -z "$argv" ];
                PRINTF '%s\n' (BASENAME -s ".fish" "$dir"/*.fish) \
                | GREP -E -iv '^(_[^\.]|fish_)' \
                | LAM -f-30.30 - - ^ /dev/null

                return (true)
        end

        # At least one argument:
        switch $argv[1];
        case -e --erase; # Delete a user function
                functions $argv
        	if [ -e "$dir/$argv[2].fish" ];
                        command RM "$dir/$argv[2].fish"
                end
        case -a --all;   # Lists every fish function
        	functions $argv
        case -d --dir;   # Prints the path to the directory of user functions
                PRINTF '%s\n' "$dir"
        case "*";        # Create or edit the named user function
        	funced "$argv[1]"
        	funcsave "$argv[1]"; \
        	and PRINTF '%s\n' "Function \"$argv[1]\" saved."
        end

        return $status
end
