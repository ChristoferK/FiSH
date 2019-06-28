# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.OkDxOI/folder.fish @ line 2
function folder
	
	printf '%s\n' $argv | read --line dirname rootdir timeout
	[ -z "$rootdir" ] && set rootdir ~/
	[ -z "$timeout" ] && set timeout 3
	
	# Timeout
	set until ( date -v +{$timeout}S +'%H%M%S' )
	set now   ( date +'%H%M%S' )
	set timeout (= $until - $now )
	[ $timeout -lt 0 ] && echo "timeout" && return (false)

	# Recursive Search
	set fs ( eval "printf '%s\n' $rootdir*/" \
	       | grep -Eiw "$dirname" \
	       | head -1 )
	[ -n "$fs" ] && printf "$fs\n" \
	             || folder "$dirname" \
	                       "$rootdir*/" \
	                        $timeout
end
