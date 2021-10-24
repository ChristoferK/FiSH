function ESC
    stdin
    string match --regex -- "(?x)
     (?<=^\[\[) .+ (?=\]\]\$)
" $argv[1] "[[$FiSH_TOKENS]]" |
        string escape -- | string \
        escape --style=regex -- |
        read --local TOKENS

    string replace -a -r -- "(?x)
[$TOKENS]" '\\\$0' $argv $0
end
