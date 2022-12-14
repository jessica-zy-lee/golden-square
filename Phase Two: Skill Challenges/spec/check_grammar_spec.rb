require 'check_grammar'

RSpec.describe "check_grammar method" do
    context "1. Given an empty string" do
        it "fails" do
            expect { check_grammar("")}.to raise_error "Not a sentence."
        end
    end

    context "2. Given a sentence with capital first letter and fullstop at the end" do
        it "returns true" do
            result = check_grammar("Hello, I am Jess.")
            expect(result).to eq true
        end
    end

    context "3. Given a sentence with a capital first letter but no fullstop at the end" do
        it "returns false" do
            result = check_grammar("Hello, I am Jess")
            expect(result).to eq false
        end
    end

    context "4. Given a sentence with a lowercase first letter and fullstop at the end" do
        it "returns false" do
            result = check_grammar("hello, I am Jess.")
            expect(result).to eq false
        end
    end

    context "5. Given a sentence with a uppercase first word and fullstop at the end" do
        it "returns true" do
            result = check_grammar("HELLO, I am Jess.")
            expect(result).to eq true
        end
    end

    context "6. Given a sentence with a uppercase first letter and an exclamation mark at the end" do
        it "returns true" do
            result = check_grammar("Hello, I am Jess!")
            expect(result).to eq true
        end
    end

    context "7. Given a sentence with a uppercase first letter and a question mark at the end" do
        it "returns true" do
            result = check_grammar("Hello, I am Jess?")
            expect(result).to eq true
        end
    end

    context "8. Given a sentence with a uppercase first letter and a comma at the end" do
        it "returns false" do
            result = check_grammar("Hello, I am Jess,")
            expect(result).to eq false
        end
    end

end