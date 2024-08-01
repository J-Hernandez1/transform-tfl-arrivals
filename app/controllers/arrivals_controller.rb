class ArrivalsController < ApplicationController
  def index
    @arrivals = ArrivalsService.new('940GZZLUGPS').fetch_arrivals_data
  end
end
