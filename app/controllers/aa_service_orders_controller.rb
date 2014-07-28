class AaServiceOrdersController < ApplicationController
  def index
    @service_orders = ServiceOrder.all
  end
end