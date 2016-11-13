require 'rails_helper'

RSpec.describe Paper, type: :model do
    it "should create a new Paper" do
        Paper.new(title:'COMPUTING MACHINERY AND INTELLIGENCE',venue: 'Mind 49: 433-460', year: 1950)
    end
end
