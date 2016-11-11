require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
    it "should render" do
        get :new
        expect(response).to render_template(:new)
    end
end
