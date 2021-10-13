function to:upper
    stdin | read -z -d \n -a argv
    string upper -- $argv
end
