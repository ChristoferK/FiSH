cat $fish_function_path[1]/{.*,**}.fish | source
functions --all | string match -- on:\* | source
