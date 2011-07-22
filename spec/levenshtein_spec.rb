require 'levenshtein'
describe String do
  it "should calculate distance between two strings" do
    "foo".levenshtein("fo").should == 1
  end
  it "should return 0 for the same string " do
    "foo".levenshtein("foo").should == 0
  end
  it "should return 1 for a replacement" do
    "a".levenshtein("b").should == 1
  end
  it "should return 2 for a replacement and addition" do
    "a".levenshtein("bc").should == 2
  end

end
