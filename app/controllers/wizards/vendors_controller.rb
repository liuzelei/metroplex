module Wizards
  class VendorsController < ApplicationController
    layout "wizard"
    def index

    end

    def new
      @vendor = Vendor.new
    end

    def create

    end

    def edit

    end

    def update

    end
  end
end