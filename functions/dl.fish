function dl --description 'Download '
	set -l filename ( string unescape --style=url \
		        	( OSASCRIPT -e \
			"use framework \"Foundation\"

			property this : a reference to current application
			property NSURL : a reference to NSURL of this

			(NSURL's URLWithString:\"$argv[1]\")'s ¬
			         URLByDeletingPathExtension()'s ¬
			         lastPathComponent() as text" \
				) \
			)

	set -l output ~/Downloads/"$filename.ts"

	command streamlink --default-stream best \
		           --url "$argv" \
			   --output "$output"

	reveal "$output"
end
