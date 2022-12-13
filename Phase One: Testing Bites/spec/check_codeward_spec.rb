require "check_codeward"
RSpec.describe "checks if the codeward is correct" do
    it "if input is horse, then codeward is correct" do
        result = check_codeward("horse")
        expect(result).to eq "correct!, come in"
    end

    it "if input start with h and ends with e, then the input is close to the codeward" do
        result = check_codeward("house")
        expect(result).to eq "close, but nope."
    end


    it "if input is wrong, then it prints WRONG" do
        result = check_codeward("very wrong")
        expect(result).to eq "wrong"
end
end