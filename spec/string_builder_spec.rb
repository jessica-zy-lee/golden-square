require "string_builder"

RSpec.describe StringBuilder do
    it "returns empty string" do
        str = StringBuilder.new
        result = str.output
        expect(result).to eq ""
    end

    it "returns string that has been added" do
        str = StringBuilder.new
        str.add("makers")
        result = str.output
        expect(result).to eq "makers, "
    end

    it "returns 4 strings that has been added" do
        str = StringBuilder.new
        str.add("makers")
        str.add("LSE")
        str.add("UCL")
        str.add("King's")
        result = str.output
        expect(result).to eq "makers, LSE, UCL, King's, "
    end
end