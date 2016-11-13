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
end
