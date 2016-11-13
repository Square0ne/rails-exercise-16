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
    it "should have an author" do
        @example = create(:paper)
        @alan_turing = create(:author)
        @example.authors.push(@alan_turing)
        visit paper_path(@example.id)

        expect(page).to have_text("Authors")
        expect(page).to have_text @alan_turing.name
    end
    it "should have an author" do
        @example = create(:paper)
        @alan_turing = create(:author)
        visit edit_paper_path(@example.id)

        expect(page).to have_text("Author 1")
    end
        it "should filter by year" do
            @example = create(:paper)
            @example2 = create(:paper2)
            visit papers_path(year: "1950")

            expect(page).to_not have_text "1968"
  end
end
