require 'rails_helper'

RSpec.feature "Authors", type: :feature do

  it "should create a new author Alan Turing" do
    visit new_author_path

    fill_in "First name", :with => "Alan"
    fill_in "Last name", :with => "Turing"
    fill_in "Homepage", :with => "http://wikipedia.org/Alan_Turing"

    click_button "create"

    expect(Author.where(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")).to exist
  end
end
