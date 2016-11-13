require 'rails_helper'

RSpec.describe PapersController, type: :controller do
    it "render edit page" do
       @example= create(:paper)
       get :edit, id: @example.id
       expect(response).to render_template("edit")
    end
    it "delete paper" do
       @example= create(:paper)
       get :destroy, id: @example.id
       expect(response.status).to eq(302)
    end
end
