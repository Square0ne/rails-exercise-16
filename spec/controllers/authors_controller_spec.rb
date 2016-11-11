require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
    it "should render" do
        get :new
        expect(response).to render_template(:new)
    end

    it "should display a field First name, Last name and Homepage" do
        get :new
        expect(response).to have_field("first name")
        expect(response).to have_field("last name")
        expect(response).to have_field("homepage")
    end
end
