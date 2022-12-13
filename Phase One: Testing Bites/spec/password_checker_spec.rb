require 'password_checker'

RSpec.describe PasswordChecker do
    it "password is at least 8 characters, so returns true" do
        password_checker = PasswordChecker.new
        result = password_checker.check("lamalama")
        expect(result).to eq true
    end

    it "password is less than 8 characters, returns error message" do
        password_checker = PasswordChecker.new
        expect { password_checker.check("lama") }.to raise_error "Invalid password, must be 8+ characters."
    end
end