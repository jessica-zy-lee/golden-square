require 'report_length'

RSpec.describe "assign length" do
    it "returns length of string input" do
        result = report_length("Makers")
        expect(result).to eq "This string was 6 characters long."
    end
end