require 'rails_helper'

RSpec.feature "Papers", type: :feature do
    it "should have a new page" do
        visit new_paper_path
    end
    it "should have an index page" do
      visit papers_path

      expect(page).to have_text("Title")
      expect(page).to have_text("Venue")
      expect(page).to have_text("Year")
    end
    it "should show error message missing title" do
      visit new_paper_path

      fill_in "Venue", :with => "mind 49: 433-460"
      fill_in "Year", :with => 1950


      click_button "create"

      expect(page).to have_text("Title can't be blank")
    end
end
