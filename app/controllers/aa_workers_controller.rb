class AaWorkersController < ApplicationController
  def index
    @aa_workers = AaWorker.all
  end
end