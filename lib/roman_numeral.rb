class RomanNumeral

  def r_to_i(numeral)

    value = 0

    if numeral.empty?
      return nil
    end

    numeral.strip!
    numeral.upcase!

    if (numeral != numeral[/[MCDLXVI]*/])
      return nil
    end

    until numeral.length == 0 do
      value += 900 unless (numeral.sub! "CM", "").nil?
      value += 1000 unless (numeral.sub! "M", "").nil?
      value += 500 unless (numeral.sub! "D", "").nil?
      value += 100 unless (numeral.sub! "C", "").nil?
      value += 50 unless (numeral.sub! "L", "").nil?
      value += 9 unless (numeral.sub! "IX", "").nil?
      value += 10 unless (numeral.sub! "X", "").nil?
      value += 4 unless (numeral.sub! "IV", "").nil?
      value += 5 unless (numeral.sub! "V", "").nil?
      value += 1 unless (numeral.sub! "I", "").nil?
    end
    value
  end
end