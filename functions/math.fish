function math
    begin
        stdin | builtin math $argv
        or builtin math $argv
    end 2>/dev/null
end
