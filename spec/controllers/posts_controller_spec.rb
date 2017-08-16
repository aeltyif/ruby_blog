require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before :each do
    @user = FactoryGirl.build(:user)
    sign_in(@user)
    @post = FactoryGirl.build(:post, title: 'Testing this title')
  end

  # Showing the list of posts for the non registered users
  describe "#index" do
    it "show the list of posts" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  # Creating a new post
  describe '#create' do
    before {
      params = {
        title: 'Grill Title',
        body: 'Hello this is a testing body here'
      }
      post :create, params: { :post => params }
    }
    it 'responds with 200' do
      expect(response).to have_http_status(:ok)
    end
  end
end
