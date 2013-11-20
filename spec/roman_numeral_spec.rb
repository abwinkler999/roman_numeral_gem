require 'roman_numeral'

describe RomanNumeral do

  it "refuses to parse strings that are not Roman numerals" do
    subject.r_to_i("").should == nil
    subject.r_to_i("FOO").should == nil
    subject.r_to_i("XVIIQ").should == nil
  end

  it "can parse I into 1" do
    subject.r_to_i("I").should == 1
  end

  it "can clean up poorly formatted arguments" do
    subject.r_to_i("i").should == 1
    subject.r_to_i(" i ").should == 1
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

  it "can parse VI into 6" do
    subject.r_to_i("VI").should == 6
  end

  it "can parse VII into 7" do
    subject.r_to_i("VII").should == 7
  end

  it "can parse VI into 8" do
    subject.r_to_i("VIII").should == 8
  end

  it "can parse X into 10" do
    subject.r_to_i("X").should == 10
  end

  it "can parse IX into 9" do
    subject.r_to_i("IX").should == 9
  end

  it "can parse XIII into 13" do
    subject.r_to_i("XIII").should == 13
  end


  it "can parse L into 50" do
    subject.r_to_i("L").should == 50
  end

  it "can parse LII into 52" do
    subject.r_to_i("LII").should == 52
  end

  it "can parse XIV into 14" do
    subject.r_to_i("XIV").should == 14
  end

  it "can parse DCLXVI into 666" do
    subject.r_to_i("DCLXVI").should == 666
  end
  
  it "can parse MCMLXXXVIII into 1988" do
    subject.r_to_i("MCMLXXXVIII").should == 1988
  end
end