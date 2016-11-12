require 'rails_helper'

RSpec.describe Author, type: :model do
    it "should create new Author" do
        Author.new(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")
    end
    it "should have a name" do
        expect((Author.new(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")).name).to eq "Alan Turing"
    end

end
