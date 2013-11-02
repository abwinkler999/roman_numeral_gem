require 'roman_numeral'

describe RomanNumeral do

	it "can parse I into 1" do
		subject.r_to_i("I").should == 1
	end

	it "can parse II into 2" do
		subject.r_to_i("II").should == 2
	end

end