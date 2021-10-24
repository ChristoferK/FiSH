function reopen
    pkill -i -x "$argv"
    and open -a "$argv"
end
