class AaTrailersController < ApplicationController
  def index
    @aa_trailers = AaTrailer.all
  end
end