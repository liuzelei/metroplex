require 'rails_helper'

RSpec.describe ServicesController, type: :controller do

  before do
    @user = FactoryGirl.create(:admin_user)
    sign_in :user, @user
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it "index list record count" do
      FactoryGirl.create(:aa_service)
      FactoryGirl.create(:mt_service)
      FactoryGirl.create(:cw_service)
      FactoryGirl.create(:rp_service)
      get 'index'
      expect(assigns(:services).count).to eq(4)
    end
  end
end
