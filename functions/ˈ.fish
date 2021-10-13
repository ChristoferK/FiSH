function ˈ
    [ -n "$argv" ]
    and echo $argv
    and return --

    set --local A \u02C8
    set --local B \u0027

    commandline -i -- $A
    commandline -r -- ( 
commandline -b -- |
string replace -a \
       -- {$B,$A} |
string replace -a \
       -r -- "(?x)
(?! ^ | \b)$A(.*?)
$A \B" "$B\$1$B" )
end
