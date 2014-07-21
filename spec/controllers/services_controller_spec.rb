require 'rails_helper'

RSpec.describe ServicesController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it "index list record count" do
      FactoryGirl.create(:service)
      FactoryGirl.create(:service, no: "MT", name: "保养")
      FactoryGirl.create(:service, no: "CW", name: "洗车")
      FactoryGirl.create(:service, no: "RP", name: "维修")
      get 'index'
      expect(assigns(:services).count).to eq(4)
    end
  end



end
