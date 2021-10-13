# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.tI59G9/ql.fish @ line 2
function ql --description 'alias ql=qlmanage -p'
	qlmanage -p $argv 2>/dev/null 1>&2
end
