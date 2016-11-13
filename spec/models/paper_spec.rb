require 'rails_helper'

RSpec.describe Paper, type: :model do
    it "should create a new Paper" do
        Paper.new(title:'COMPUTING MACHINERY AND INTELLIGENCE',venue: 'Mind 49: 433-460', year: 1950)
    end
    it "should'nt create new Paper w/o title" do
        expect(Paper.new(venue: 'Mind 49: 433-460', year: 1950)).to_not be_valid
    end
    it "should'nt create new Paper w/o venue" do
        expect(Paper.new(title:'COMPUTING MACHINERY AND INTELLIGENCE', year: 1950)).to_not be_valid
    end
end
