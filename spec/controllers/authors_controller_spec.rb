require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
    it "should render" do
        get :new
        expect(response).to render_template(:new)
    end
    it "render edit page" do
       @alan_turing= create(:author)
       get :edit, id: @alan_turing.id
       expect(response).to render_template("edit")
    end
end
