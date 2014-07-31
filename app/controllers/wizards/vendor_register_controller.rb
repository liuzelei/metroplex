module Wizards
  class VendorRegisterController < ApplicationController
    def basic_info
      @vendor = Vendor.new
    end

    def basic_info_verify
      @vendor = Vendor.new(basic_info_verify_vendor_register_params)
      if @vendor.valid?
        #redirect_to wizards_vendor_register_message_path
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
        render nothing: true, layout: nil, status: 204, notice: "注册成功,请耐心等待审核."
      else
        render partial: "shared/errors", layout: nil
      end
    end

    def message
      p flash[:notice]
    end

    private
    def basic_info_verify_vendor_register_params
      params.require(:vendor).permit(:name, :province, :city, :region, :address, :contact, 
                                     :contact_position, :telephone, :mobile, :email, :fax, :memo)
    end
  end
end