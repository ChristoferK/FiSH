function % --description 'Prints an escape sequence that styles terminal output'
	printf '\e[%sm' $argv
end
