require 'roman_numeral'

describe RomanNumeral do

	it "can parse I into 1" do
		subject.r_to_i("I").should == 1
	end

end