require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET #index" do
    it "show the list of posts" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    let(:user) { FactoryGirl.create(:user, email: 'grill@bd.com', password: '123456', password_confirmation: '123456', name: 'Grill') }

    it "returns http created" do
      params = {
        title: 'Grill Title',
        body: 'Hello this is a testing body here'
      }
      post :create, params: { :post => params }
      expect(response).to have_http_status(:created)
    end
  end
end
