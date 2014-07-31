module Wizards
  class VendorRegisterController < ApplicationController
    def collect
      unless current_user.vendor.nil?
        @vendor = Vendor.new
      else
        redirect_to request.referer, notice: "你已经成功注册服务商信息,不需要重复注册."
      end
    end

    def basic_info_verify
      @vendor = Vendor.new(basic_info_verify_vendor_register_params)
      if @vendor.valid?
        render nothing: true, layout: nil, status: 204
      else
        @object = @vendor
        render partial: "shared/errors", layout: nil
      end
    end

    def commit
      @vendor = Vendor.new(basic_info_verify_vendor_register_params)
      @vendor.user = current_user

      if @vendor.save
        flash[:notice] = "注册成功,请耐心等待审核."
        render nothing: true, layout: nil, status: 204
      else
        @object = @vendor
        render partial: "shared/errors", layout: nil
      end
    end

    private
    def basic_info_verify_vendor_register_params
      params.require(:vendor).permit(:name, :province, :city, :region, :address, :contact, 
                                     :contact_position, :telephone, :mobile, :email, :fax, :memo)
    end
  end
end