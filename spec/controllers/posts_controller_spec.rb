require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  before do
    sign_in(user)
  end

  describe "GET #index" do
    it "show the list of posts" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it "returns http created" do
      params = {
        title: 'Grill Title',
        body: 'Hello this is a testing body here'
      }
      post :create, params: { :post => params }
      expect(response).to have_http_status(302)
    end
  end
end
