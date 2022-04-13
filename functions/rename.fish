function rename
		argparse --name=rename --exclusive=x,n \
		         n/name x/extension f/file= -- \
		         $argv

		not [ -e "$_flag_file" ]
		and return ( err Error \
		at path: "$_flag_file" )

		set --local dir ( realpath \
		           $_flag_file/../ )

		string replace  -- $dir "" (
		       realpath  $_flag_file
		       ) | read --local file

		string split -m 1 -r -- . $file |
		read --local -L filename extension
		set  --local -- name "$argv"
		
		printf %s\\c {$name.$extension,$_flag_n} \
		             {$filename.$name,,$_flag_x} \
		             {$name} | read filename

		mv -n $dir/{$file,$filename}
end
