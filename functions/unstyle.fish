function unstyle
string replace --all --regex -- \
   '\x1b\[[0-9;]*m' '' $argv
end
