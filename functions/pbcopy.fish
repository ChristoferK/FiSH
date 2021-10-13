function pbcopy
    stdin Ø
    set argv (string join -- \n $Ø "$argv" |
          string collect -- )
    pwsh Set-Clipboard @\"\n"$argv"\n\"@
end
