function reveal
		stdin
	
		osascript -s s -e 'use Finder : application id "MACS"
		property t : ":Volumes:"
		property «class txdl» : {linefeed & t, t}

		on run paths as linked list
	        	get POSIX file paths as text
			reveal text items of result
			selection in Finder as text
			log POSIX path of the result
			activate Finder
		end run' $argv $0
end
