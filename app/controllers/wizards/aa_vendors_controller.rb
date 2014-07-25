module Wizards
  class AaVendorsController < ApplicationController
    layout "wizard"
    def new
      @aa_vendor = AaVendor.new
    end

    def create
      
    end
  end
end