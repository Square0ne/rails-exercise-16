require 'rails_helper'

RSpec.feature "Authors", type: :feature do

  it "should create a new author Alan Turing" do
    visit new_author_path

    fill_in "First name", :with => "Alan"
    fill_in "Last name", :with => "Turing"
    fill_in "Homepage", :with => "http://wikipedia.de/Alan_Turing"

    click_button "create"

    expect(Author.where(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.de/Alan_Turing")).to exist
  end

  it "should display details" do
    visit new_author_path

    fill_in "First name", :with => "Alan"
    fill_in "Last name", :with => "Turing"
    fill_in "Homepage", :with => "http://wikipedia.de/Alan_Turing"

    click_button "create"
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
  it "should have an index page" do
    visit authors_path
  end
  it "index page should have new author button" do
    visit authors_path
    expect(page).to have_css("a", :text => "Add author")
  end
  it "index page should have delete author button" do
      @alan_turing= create(:author)
    visit authors_path
    expect(page).to have_css("a", :text => "Destroy")
  end

  it "should show error message missing last name" do
    visit new_author_path

    fill_in "First name", :with => "Alan"
    fill_in "Homepage", :with => "http://wikipedia.de/Alan_Turing"

    click_button "create"

    expect(page).to have_text("Last name can't be blank")
  end
end
