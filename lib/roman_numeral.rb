class RomanNumeral

	def pure_digit(digit)
		case digit
		when "I"
			return 1
		when "V"
			return 5
		when "X"
			return 10
		when "L"
			return 50
		when "C"
			return 100
		when "D"
			return 500
		when "M"
			return 1000
		else
			return nil
		end
	end

	def pre_and_post_parser(letter)
		if @numeral.partition(letter)[0].include? "I"
			return pure_digit(letter) - 1
		elsif @numeral.partition(letter)[2].include? "III"
			return pure_digit(letter) + 3
		elsif @numeral.partition(letter)[2].include? "II"
			return pure_digit(letter) + 2
		elsif @numeral.partition(letter)[2].include? "I"
			return pure_digit(letter) + 1
		else
			return pure_digit(letter)
		end
	end

	def r_to_i(prospective)

		@numeral = prospective

		if @numeral.empty?
			return nil
		end

		# can't concatenate methods, because both strip! and upcase! return nil if no changes made
		@numeral.strip!
		@numeral.upcase!

		if @numeral.gsub(/[MCDLXVI]/, "*") == @numeral
			return nil
		end

		if @numeral.include? "L"
			return pre_and_post_parser("L")
		end

		if @numeral.include? "X"
			return pre_and_post_parser("X")
		end

		if @numeral.include? "V"
			return pre_and_post_parser("V")
		end

	else return @numeral.length

	end
end