function ^
    set -l Ø
    stdin Ø

    string replace --all --regex -- \
        "(?x) (?<!\\\ ) (?:\\\ {2})*
    @(\[[0-9. ]*\])" '\$Ø$1' \
        "$argv" |
        string replace --all -- \$Ø[] \$Ø |
        read -z argv

    printf %s $argv | string join -- "\n" | source
end
