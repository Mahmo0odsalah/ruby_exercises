#spec/caesar_spec.rb
require("./lib/caesar_cipher.rb")

describe CaesarCipher do 
  my_caesar = CaesarCipher.new
  describe "#translate" do
    it "returns cipher of simple cipher operation" do
      expect(my_caesar.translate("abc",1)).to eql("bcd")
    end

    it "returns cipher while perserving case" do
      expect(my_caesar.translate("AbC",5)).to eql("FgH")
    end

    it "returns cipher and wraps around the alphabet" do
      expect(my_caesar.translate("vyZ",4)).to eql("zcD")
    end

    it "returns cipher of letters and perserves special characters" do
      expect(my_caesar.translate("$vyZ!",4)).to eql("$zcD!")
    end

    it "returns cipher of letters with a very large shift value" do
      expect(my_caesar.translate("abc",31)).to eql("fgh")
    end
  end
end