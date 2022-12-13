require 'present'

RSpec.describe Present do
    it "wraps and unwraps an integer value" do
        present = Present.new
        present.wrap(5)
        result = present.unwrap
        expect(result).to eq 5
    end

    it "fails when contents are wrapped more than once" do
        present = Present.new #creating new Present object
        present.wrap(5)
        expect { present.wrap(7) }.to raise_error "A contents has already been wrapped" 
    end

    it "fails when attempt to unwrap a contents that hasn't been wrapped" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped yet"
    end
end