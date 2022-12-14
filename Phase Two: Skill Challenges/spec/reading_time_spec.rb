require 'reading_time'

RSpec.describe "reading_time method" do
    it "when string is empty, it returns 0 minutes" do
        result = reading_time("")
        expect(result).to eq 0
    end

    it "when string has one word, it returns 1 minute" do
        result = reading_time("one")
        expect(result).to eq 1
    end

    it "when string has two hundred words, it returns 1 minutes" do
        TWO_HUNDRED_WORDS = "one " * 200
        result = reading_time(TWO_HUNDRED_WORDS)
        expect(result).to eq 1
    end

    it "when string has >200 and <=400 words, it returns 2 minutes" do
        THREE_HUNDRED_WORDS = "one " * 300
        result = reading_time(THREE_HUNDRED_WORDS)
        expect(result).to eq 2
    end

    it "when string has 400 words, it returns 2 minutes" do
        FOUR_HUNDRED_WORDS = "one " * 400
        result = reading_time(FOUR_HUNDRED_WORDS)
        expect(result).to eq 2
    end

    it "when string has 5,000, it returns 25 minutes" do
        FIVE_THOUSAND_WORDS = "one " * 5000
        result = reading_time(FIVE_THOUSAND_WORDS)
        expect(result).to eq 25
    end
end