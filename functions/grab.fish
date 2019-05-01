function grab --description 'Take a time-delayed window capture'
        [ -z "$argv[1]" ]; \
                and set -l delay 5; \
                or  set -l delay $argv[1]

        set -l dir (defaults read com.apple.screencapture location)
        set -l filename "Screen Shot "(date +'%Y-%m-%d at %Hh%Mm%S')".jpg"
        set -l path "$dir/$filename"

        screencapture -iWoax -t jpg -T $delay "$path"

        reveal "$path"
end
