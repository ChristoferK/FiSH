function cd
		[ "$argv" ] ||
		set argv $HOME

		[ "$argv" = .. ] \
		&& builtin cd .. \
		&& return 0

		list {$PWD,$CDPATH,}/{,*}$argv* |
		read --local dir

		[ -e "$dir" ] &&
		[ -f "$dir" ] &&
		set dir $dir/../

		builtin cd $dir
end
