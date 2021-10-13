# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.zY1mjV/streamlink.fish @ line 2
function stream --description 'Plays an internet video stream in the default video player' 
	command streamlink --default-stream best $argv
end
