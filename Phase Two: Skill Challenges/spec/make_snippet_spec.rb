require 'make_snippet'

RSpec.describe "returns first five words and ... if more" do

    it "if five words or less, reutrns first five words" do
        result = make_snippet("I am the king")
        expect(result).to eq "I am the king"
    end

    it "more than five words, returns first five words and ..." do
        result = make_snippet("I am the king of the world")
        expect(result).to eq "I am the king of..."
    end
end