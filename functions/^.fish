function ^
    stdin

    string replace -a -- '$0[]' '$0' (
string replace -ar -- "(?x)(?<!\\\
       )(?:\\\ {2})*@(\[[0-9. ]*\])
       " '\$0$1' ( string replace \
       -r -- '\n' '\\\n' $argv ) ) |
        read -z -a argv

    printf %s "$argv" | source
end
