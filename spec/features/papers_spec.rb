require 'rails_helper'

RSpec.feature "Papers", type: :feature do
    it "should have a new page" do
        visit new_paper_path
    end
end
