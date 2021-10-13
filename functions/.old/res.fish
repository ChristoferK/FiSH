# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.mvoSKu/res.fish @ line 2
function res --description 'Retrieves pixel resolution data for image files'
	PRINTF '%s*%s\n' ( MDLS -name kMDItemPixelHeight \
	                        -name kMDItemPixelWidth $argv \
			 | GREP -E -o '\d+') # | bc
	return $status
end
