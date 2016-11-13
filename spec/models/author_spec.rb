require 'rails_helper'

RSpec.describe Author, type: :model do
    it "should create new Author" do
        Author.new(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")
    end
    it "should have a name" do
        expect((Author.new(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")).name).to eq "Alan Turing"
    end
    it "should'nt create new Author w/o last name" do
        expect(Author.new(first_name:"Alan", homepage:"http://wikipedia.org/Alan_Turing")).to_not be_valid
    end
    it "should return array of papers" do
        @alan_turing = create(:author)
        expect(@alan_turing.papers).to eq Array.new()
    end
end
