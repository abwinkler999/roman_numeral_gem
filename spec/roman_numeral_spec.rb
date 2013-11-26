require 'roman_numeral_gem'

describe RomanNumeralGem do

  it "refuses to parse strings that are not Roman numerals" do
    "".r_to_i.should == nil
    "FOO".r_to_i.should == nil
    "XXVIIQ".r_to_i.should == nil
  end

  it "can parse I into 1" do
    "I".r_to_i.should == 1
  end

  it "can clean up poorly formatted arguments" do
    "i".r_to_i.should == 1
    " i ".r_to_i.should == 1
  end

  it "can parse II into 2" do
    "II".r_to_i.should == 2
  end

  it "can parse III into 3" do
    "III".r_to_i.should == 3
  end

  it "can parse IV into 4" do
    "IV".r_to_i.should == 4
  end

  it "can parse V into 5" do
    "V".r_to_i.should == 5
  end

  it "can parse VI into 6" do
    "VI".r_to_i.should == 6
  end

  it "can parse VII into 7" do
    "VII".r_to_i.should == 7
  end

  it "can parse VI into 8" do
    "VIII".r_to_i.should == 8
  end

  it "can parse X into 10" do
    "X".r_to_i.should == 10
  end

  it "can parse IX into 9" do
    "IX".r_to_i.should == 9
  end

  it "can parse XIII into 13" do
    "XIII".r_to_i.should == 13
  end

  it "can parse L into 50" do
    "L".r_to_i.should == 50
  end

  it "can parse LII into 52" do
    "LII".r_to_i.should == 52
  end

  it "can parse XIV into 14" do
    "XIV".r_to_i.should == 14
  end

  it "can parse DCLXVI into 666" do
    "DCLXVI".r_to_i.should == 666
  end

  it "can parse MCMLXXXVIII into 1988" do
    "MCMLXXXVIII".r_to_i.should == 1988
  end

  it "can parse XL into 40" do
    "XL".r_to_i.should == 40
  end

  it "can parse XC into 90" do
    "XC".r_to_i.should == 90
  end

  it "can parse CD into 400" do
    "CD".r_to_i.should == 400
  end

  it "can parse CM into 900" do
    "CM".r_to_i.should == 900
  end

end