require 'gratitudes'

RSpec.describe Gratitudes do
    it "initializes a string with no gratitudes" do
        gratitude = Gratitudes.new
        result = gratitude.format
        expect(result).to eq "Be grateful for: "
    end

    it "returns a string with one gratitude" do
        gratitude = Gratitudes.new
        gratitude.add("the snow")
        result = gratitude.format
        expect(result).to eq "Be grateful for: the snow"
    end

    it "returns a string with multiple gratitudes" do
        gratitude = Gratitudes.new
        gratitude.add("the snow")
        gratitude.add("Christmas")
        gratitude.add("the Malta trip")
        result = gratitude.format
        expect(result).to eq "Be grateful for: the snow, Christmas, the Malta trip"
    end
end