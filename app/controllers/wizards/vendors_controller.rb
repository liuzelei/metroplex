module Wizards
  class VendorsController < ApplicationController
    layout "wizard"

    def new
      @vendor = Vendor.new
    end

    def create
      @vendor = Vendor.new(vendor_params)

      if @vendor.save
        redirect_to new_wizards_vendor_path, notice: "注册成功"
      else
        render action: "new", notice: "注册失败"
      end
    end

    private
    def vendor_params
      params.require(:vendor).permit(:name, :province, :city, :region, :address, :contact, :contact_position, :telephone, :mobile, :email, :fax, :memo)
    end
  end
end