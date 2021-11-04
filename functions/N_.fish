function N_
		𝔼=$pipestatus begin
			not [ "$argv" ]
			and set argv $𝔼
		end

		math {+,$argv} |
		read --local 𝔼

		math 1 - 2 x 0^$𝔼
		return $𝔼
end
