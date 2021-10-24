function gravatar
    for arg in $argv
        curl -s -L https://gravatar.com/avatar/(
printf $arg|tr [:upper:] [:lower:]|md5 
).jpg?s=400 >~/Pictures/$arg.jpg
    end
end
