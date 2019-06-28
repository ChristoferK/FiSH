# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.MvMAxj/kind.fish @ line 2
function kind --description 'Get probable file extensions suitable for the file types detected'
	set -l _NONE 0
	set -l _FONT_I 3
	set -l _FONT_U 4
	set -l _COLOR_V 7
	set -l _COLOR_K 30
	set -l _COLOR_R 31
	set -l _COLOR_G 32
	set -l _COLOR_Y 33
	set -l _COLOR_B 34
	set -l _COLOR_M 35
	set -l _COLOR_C 36
	set -l _COLOR_W 37
	set -l _FILL_K 40
	set -l _FILL_R 41
	set -l _FILL_G 42
	set -l _FILL_Y 43
	set -l _FILL_B 44
	set -l _FILL_M 45
	set -l _FILL_C 46
	set -l _FILL_W 47

	set mime ( file --brief --mime-type $argv )
	set N

	set cols ( tput cols )
	set tablen ( string length \t )
	set elipsis "..."

	for i in (seq (count $argv))
		set filepath "$argv[$i]"
		set mimetype "＊$mime[$i]"

		set mimelen ( string length "$mimetype" )
		set pathlen ( string length "$filepath" )
		
		[ (= $pathlen + $mimelen + $tablen) -ge $cols ] \
			&& set numdots 3 \
			|| set numdots 0
		
		set maxcols (= $cols - $mimelen - $tablen - $numdots)
		echo $maxcols (= $pathlen % $maxcols + 1)
		set filepath ( string sub -s (= $pathlen % $maxcols + 1) "$filepath" )
		set pathlen ( string length "$filepath" )
		set gapsize (= $cols - $numdots - $pathlen + $tablen - $mimelen)

		printf '%s%s%-*s%s\n' \
		       (string sub -l $numdots "$elipsis") \
		       (% $_FONT_I $_FONT_U $_COLOR_W)"$filepath"(% $_NONE) \
		       "$gapsize" \t \
		       (% $_COLOR_K $_FILL_W)"$mimetype"(% $_NONE)
	end
end
