function RFCget
		set  --local dir ~/Downloads/RFC
		read --local -p "printf Title:\ " \
		             -c "$argv" f
		set  --local f  "$dir/$f"

		printf %s Downloading...
		pbpaste | while read --line url
		                curl -s -L $url
		          end > $f.ts || return (
		                     err Failed.)

		printf %s Done. \n Converting...
		ffmpeg -i $f{.ts,.mp4} &>/dev/null
		or return ( err Failed. )
		and rm $f.ts
		printf %s\n Done. $f.mp4
end
