require 'rails_helper'

RSpec.describe VendorsController, type: :controller do

  before do
    @vendor = FactoryGirl.create(:vendor)
    @user = FactoryGirl.create(:admin_user)
    sign_in :user, @user
  end

  describe "GET 'index'" do
    it "returns http success and render the index template" do
      get :index
      expect(response).to be_success
      expect(response).to render_template('index')
    end
  end

  describe "GET 'new'" do
    it "returns http success and render the new template" do
      get :new
      expect(response).to be_success
      expect(response).to render_template('new')
    end
  end

  describe "POST 'create'" do
    it "create vendor success" do
      post :create, :vendor => { name: "上海修理厂" }
      expect(response).to redirect_to(edit_vendor_path(assigns(:vendor)))
      expect(flash[:notice]).to include("供应商创建成功")
    end

    it "fails create vendor" do
      post :create, :vendor => { name: "" }
      expect(response).to render_template('new')
    end
  end

  describe "GET 'edit'" do
    it "returns http success and render the edit template" do
      get :edit, id: @vendor.id
      expect(response).to be_success
      expect(response).to render_template('edit')
    end
  end

  describe "PUT 'update/:id'" do
    it "update vendor success" do
      put :update, id: @vendor.id, vendor: { name: "上海修理厂", email: "123@163.com" }
      expect(response).to redirect_to(vendors_path)
      expect(flash[:notice]).to include("供应商编辑成功")
    end

    it "fails update vendor" do
      put :update, id: @vendor.id, vendor: { name: "", email: "123@163.com" }
      expect(response).to render_template('edit')
    end
  end

end
