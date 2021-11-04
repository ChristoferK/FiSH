function unset --no-scope-shadowing
    set --local args $argv
    set --erase argv
    set --erase $args
end
