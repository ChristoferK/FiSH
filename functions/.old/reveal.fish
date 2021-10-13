# Defined in - @ line 1
function reveal --description 'Reveal files in Finder'
	open -R (eval "echo $argv")
end
