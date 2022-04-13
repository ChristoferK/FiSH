set -U --  fish_features (
status features | string \
split --no-empty --field \
1 -- \040 )

status features | string \
split --no-empty --field \
2 -- \040 | string match \
off || exit 0

exec -- fish -f ( string \
join -- , $fish_features )
