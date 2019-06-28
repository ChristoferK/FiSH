# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.NVJhZr/server.fish @ line 2
function server
	set dir "$PWD"
	[ -n "$argv" ] && cd "$argv"
        python -m SimpleHTTPServer 9999
        cd "$dir"
end
