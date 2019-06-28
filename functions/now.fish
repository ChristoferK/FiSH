# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.wYkd1F/now.fish @ line 2
function now --description 'Returns the current date and time with options to request the information from a timeserver'
	argparse --name=now 'n-net' 's-server=?' -- $argv
        
        [ -z "$_flag_net$_flag_server" ] \
                && set result ( date +'%Y-%m-%d %H:%M:%S' ) \
                && set source ( hostname )

        [ -z "$_flag_server" ] \
                && set result ( nc $_flag_server 13 \
                              | awk 'length($0)>0 {print 20$2,$3}' ) \
                && set source $_flag_server

        nc time.nist.gov 13 | awk 'length($0)>0 {print 20$2,$3}'
end
