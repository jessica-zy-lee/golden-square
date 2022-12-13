require "counter"
RSpec.describe Counter do
    it "initializes at 0" do
        counter = Counter.new
        result = counter.report
        expect(result).to eq "counted to 0 so far."
            end

            it "when input is an integer, the integer will be in the string. " do
                counter = Counter.new
                counter.add(3)
                result = counter.report
                expect(result).to eq "counted to 3 so far."
                end
        end

