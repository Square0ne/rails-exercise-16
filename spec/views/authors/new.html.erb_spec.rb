require 'rails_helper'

RSpec.describe "authors/new", type: :view do
    before :each do
		assign(:author, Author.new)
	end
    
    it "should display a field First name, Last name and Homepage" do
        render :template => "authors/new.html.erb"
        rendered.should have_field("First name")
        rendered.should have_field("Last name")
        rendered.should have_field("Homepage")
    end
end
