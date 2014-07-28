class LocatorDevicesController < ApplicationController
  def index
    @locator_devices = LocatorDevice.all
  end
end
