class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all.search(params[:search]).page(params[:page])
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to edit_vendor_path(@vendor), notice: "供应商创建成功"
    else
      render action: "new", notice: "供应商创建失败"
    end
  end

  def edit
    @vendor = Vendor.find_by_id(params[:id])
  end

  def update
    @vendor = Vendor.find_by_id(params[:id])

    if @vendor.update_attributes(params[:vendor])
      redirect_to vendors_path, notice: "供应商编辑成功"
    else
      render action: "edit", notice: "供应商编辑失败"
    end
  end

  private
  def vendor_params
    params.require(:vendor).permit(:name, :province, :city, :region, :address, :contact, :contact_position, 
                                   :mobile, :telephone, :fax, :email, :memo, :status, :disabled)
  end
end
