require 'count_words'

RSpec.describe "count_words method" do
    it "returns number of words in string" do
        result = count_words("one two three")
        expect(result).to eq 3
    end

    it "returns number of words in string" do
        result = count_words("one two three four")
        expect(result).to eq 4
    end

    it "returns number of words in string" do
        result = count_words("one two three four five")
        expect(result).to eq 5
    end
end