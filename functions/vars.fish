function vars
    begin
        set | string match --regex -- "(?x) ^ \H*
  (?:"( string join -- \| \\Q$argv\\E 
  )") \H* .* \$"
        or set
    end | NT=\n\t x= while read -ta x
        begin
            printf '%s: ' $x[1]
            printf {\{$NT,$x[3]}
            string escape -- $x[2..] |
                string join -- ,$NT
            printf {\}\n,$x[3]}
        end | fish_indent --ansi
    end | string collect --
end
