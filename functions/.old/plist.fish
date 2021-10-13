# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.y6Zfdz/plist.fish @ line 2
function plist --description 'Reads a property list file and outputs its data as a record'
	printf "property sys : application id \"com.apple.systemevents\"
                property Finder : application id \"com.apple.finder\"

                property rel : []
                property abs : ref [my rel, [\"/$PWD/\", my rel]]
                property sel : ref Finder's selection
                property path : missing value
                property file : ref sys's «class plif» (ref my path)

                property text item delimiters : linefeed

                on run arg
                        set arg to list 1 of [arg, []]
                        
                        try
                                set rel to (arg as «class furl»)'s POSIX path
                                abs
                        on error
                                sel as «class alst»
                        end try
                        
                        read result
                end run

                to read (paths as list)
                        local paths
                        
                        if paths = {} then error
                        
                        tell the paths to set [my path, paths] ¬
                                to [item 1 as text, the rest]
                        
                        tell my file to if it exists then tell the ¬
                                «class valL» of its contents to if ¬
                                it exists then return it as record
                        
                        read paths
                end read" | osascript -s s - "$argv" 2>/dev/null
end
