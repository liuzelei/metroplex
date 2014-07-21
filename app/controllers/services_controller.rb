class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
    render layout: false
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to services_path, notice: "服务定义成功"
    else
      redirect_to services_path, notice: "服务定义失败"
    end
  end

  private
  def service_params
    params.require(:service).permit(:no, :name)
  end
end
