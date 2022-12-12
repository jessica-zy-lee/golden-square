require "reminder"

RSpec.describe Reminder do
    it "reminds you of a task" do
        reminder = Reminder.new("Key")
        reminder.reminnd_me_to("walk the dog")
        result = reminder.remind
        expect(result).to eq "walk the dog, Key!"
        end
        end