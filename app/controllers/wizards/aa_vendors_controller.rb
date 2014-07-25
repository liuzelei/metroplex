module Wizards
  class AaVendorsController < ApplicationController
    layout "wizard"
    def new
      if current_user.vendor.nil?
        redirect_to new_wizards_vendor_path, notice: "请先完善供应商信息"
      end
      @aa_vendor = AaVendor.new
    end

    def create
      @aa_vendor = AaVendor.new(aa_vendor_params)
      @aa_vendor.vendor = current_user.vendor
      if @aa_vendor.save
        redirect_to new_wizards_aa_vendor_path, notice: "注册成功"
      else
        render action: 'new', notice: "注册失败"
      end
    end

    private
    def aa_vendor_params
      params.require(:aa_vendor).permit(
        aa_trailers_attributes: [:license_no, :car_type, :_destroy,:id],
        aa_regions_attributes: [:province, :city,:district, :_destroy,:id],
        aa_workers_attributes: [:name, :mobile, :id_no, :driving_license_no, :qualification_no, :_destroy,:id]
        )
    end
  end
end