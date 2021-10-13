function path-exists
    file --mime-type -F \1 -- $argv |
        string match -r -v -- '\)$' |
        string match -r -- ^.+\(?=\1\)
end
