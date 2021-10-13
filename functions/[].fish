function '[]'
printf %s "begin ; $argv ; end <&3 3<&-" | source 3<&0
end
