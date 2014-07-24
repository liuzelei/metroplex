class DidsController < ApplicationController
  def index
    @dids = Did.all
  end

  def show
    @did = Did.find_by_id(params[:id])
  end
end
