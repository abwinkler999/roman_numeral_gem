require 'roman_numeral'

describe RomanNumeral do

	it "refuses to parse strings that are not Roman numerals" do
		subject.r_to_i("").should == nil
		subject.r_to_i("FOO").should == nil
	end

	it "can parse I into 1" do
		subject.r_to_i("I").should == 1
	end

	it "can clean up poorly formatted arguments" do
		subject.r_to_i("i").should == 1
		subject.r_to_i(" i \n").should == 1
	end

	it "can parse II into 2" do
		subject.r_to_i("II").should == 2
	end

	it "can parse III into 3" do
		subject.r_to_i("III").should == 3
	end

	it "can parse IV into 4" do
		subject.r_to_i("IV").should == 4
	end

	it "can parse V into 5" do
		subject.r_to_i("V").should == 5
	end

	it "can parse X into 10" do
		subject.r_to_i("X").should == 10
	end

	it "can parse L into 50" do
		subject.r_to_i("L").should == 50
	end
end