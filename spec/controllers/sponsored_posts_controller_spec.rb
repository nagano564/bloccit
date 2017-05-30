require 'rails_helper'
include RandomData

RSpec.describe SponsoredPostsController, type: :controller do

  let (:sponsored_post) do
      SponsoredPost.create!(
        title:  RandomData.random_sentence,
        body:   RandomData.random_paragraph
      )
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

# #2
    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

# #3
    it "instantiates @sponsored_post" do
      get :new
      expect(assigns(:sponsored_post)).not_to be_nil
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
