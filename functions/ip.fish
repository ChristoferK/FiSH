# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.0M7uad/ip.fish @ line 2
function ip --description 'Get public (external) IP address'
	curl https://api.ipify.org --silent | pbcopy
	printf (% 35)(pbpaste)(% 0)\n
end
