# Defined in - @ line 2
function kind --description 'Get probable file extensions suitable for the file types detected'
	function +
		printf '\e[%sm' "$argv[1]"
	end

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

	set -l exts ( file --brief --extension $argv \
	            | grep -E -o '^\w+' | string upper )
	set -l N

	for i in (seq (count $argv))
		printf "%b%b$exts[$i]＊%b %b%b$argv[$i]%b\n\n" \
		       (+ $_COLOR_K) (+ $_FILL_W) (+ $_NONE) \
		       (+ $_FONT_I) (+ $_FONT_U) (+ $_NONE)
	end

	# functions -e +
end
