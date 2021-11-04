function fish_prompt
		set --local 𝔼 $status
		set --local Δ ( math 0 ^ $𝔼 )
		set --local γ ( math 1 + $Δ )

		commandline -C | read -l x
		[ $x = 0 ]    || printf \n

		set -xg PROMPT {$𝔼,︙,❯}
		set -l  COLORS \e\[{3$γ,0,3$γ}m
		set -l  FORMAT %{d,s,-2s}

		n=(count $PROMPT) i=(seq $n) \
		j={COLORS,FORMAT}[$i] printf (
		string join -- "" $$j ) $PROMPT

		return $𝔼
end
