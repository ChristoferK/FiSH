function unstyle
    stdin && set -p argv $0
    string replace --all --regex \
        -- '(?x) \e \[ [0-9;]* m' \
        '' $argv
end
