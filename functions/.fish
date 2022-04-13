basename -s .fish ( status dirname
     )/{.,}*.fish | string match \
     --invert --regex -- fish_\* |
     string join -- \040 |
     fold -s -w $COLUMNS
