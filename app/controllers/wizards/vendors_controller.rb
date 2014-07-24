module Wizards
  class VendorsController < ApplicationController
    layout "wizard"
    def new
      #redirect_to request.referer if 
      @vendor = Vendor.new
    end

    def create

    end
  end
end