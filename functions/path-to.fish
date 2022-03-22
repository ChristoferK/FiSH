function path-to
		not set --local --query N
		and set --local         N 1
		fs=$CDPATH/{,*}"$argv"*{/,} \
		    printf %s\\n $fs[1..$N]
end
