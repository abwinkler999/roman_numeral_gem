class RomanNumeral
	def pre_and_post_parser(numeral, lxv)
		
	end

	def r_to_i(numeral)

		if numeral.empty?
			return nil
		end

		numeral.strip!
		numeral.upcase!

		if numeral.include? "L"
			return 50
		end

		if numeral.include? "X"
			return 10
		end

		if numeral.include? "V"
			#if numeral.partition("V")
			if numeral.include? "IV"
				return 4
			elsif numeral.include? "VI"
				return 6
			else
				return 5
			end
		else
			return numeral.length
		end
	end
end