function pwsh
    powershell.exe {-NoProfile,-Command,
               ,$argv[1]} $argv[2..]
end
