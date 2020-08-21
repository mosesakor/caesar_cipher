require './lib/caesar_cipher'

describe Caesar do
  describe "#caesar_cipher" do 
    it "returns a string encrypted with caesar cipher algorithm" do
      caesar = Caesar.new

      expect(caesar.caesar_cipher("hello", 2)).to eql("jgnnq")
    end
  end

  describe "#shift" do
   it  "shifts a character" do
    caesar = Caesar.new

    expect(caesar.shift("a", 2)).to eql("c")
   end
  end


  describe "#lower_case?" do
    it "returns true if character is lowercase" do
      caesar = Caesar.new

      expect(caesar.lower_case?("a")).to eql(true)
    end
  end

  describe "#upper_case?" do
    it "returns true if character is uppercase" do 
      caesar = Caesar.new

      expect(caesar.upper_case?("A")).to eql(true)
    end
  end
end