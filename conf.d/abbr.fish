not status is-interactive
and exit -1

function Ʃ
		abbr --global --add \
		     -- "$argv[1]"  \
		        "$argv[2..]"
end

Ʃ  ϟ+    commandline -i
Ʃ  ...   ‥
